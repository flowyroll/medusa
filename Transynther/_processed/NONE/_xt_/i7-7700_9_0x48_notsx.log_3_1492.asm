.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9a84, %rsi
lea addresses_WT_ht+0x72b4, %rdi
clflush (%rdi)
nop
add $1466, %r12
mov $108, %rcx
rep movsq
nop
nop
nop
nop
cmp $55852, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rcx

// Load
lea addresses_WC+0x1e9c4, %r12
nop
nop
nop
nop
inc %r11
movntdqa (%r12), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
xor $22218, %rcx

// Store
lea addresses_WC+0x14644, %rcx
nop
nop
nop
nop
nop
add $26547, %rbp
movw $0x5152, (%rcx)
sub %r8, %r8

// Store
lea addresses_A+0x1ee9c, %r9
nop
nop
xor $53580, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovntdq %ymm5, (%r9)
nop
cmp $23139, %rbp

// Faulty Load
lea addresses_WT+0x4e84, %r11
nop
nop
nop
nop
nop
cmp $16982, %rcx
mov (%r11), %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'39': 3}
39 39 39
*/
