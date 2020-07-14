.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x2612, %r11
nop
nop
sub %rdx, %rdx
movb (%r11), %r15b
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0xf6f2, %rbx
and $32943, %r15
mov (%rbx), %di
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0xb9b2, %rsi
lea addresses_UC_ht+0xf9b2, %rdi
clflush (%rdi)
nop
nop
nop
dec %r9
mov $6, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $46787, %r9
lea addresses_UC_ht+0xb9b2, %rsi
lea addresses_A_ht+0xb800, %rdi
nop
nop
nop
nop
dec %rdx
mov $93, %rcx
rep movsb
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x32f2, %rcx
cmp %rdi, %rdi
mov (%rcx), %rsi
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x1706, %r15
nop
nop
nop
nop
nop
dec %rdi
movb (%r15), %cl
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x15d12, %r9
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r9
vmovaps %ymm6, (%r9)
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x35d0, %rsi
clflush (%rsi)
nop
nop
add $63373, %r15
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x121b2, %r15
cmp $47415, %r11
movb $0x61, (%r15)
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x12bb2, %rsi
lea addresses_WT_ht+0x1606a, %rdi
clflush (%rsi)
nop
sub $7472, %rdx
mov $21, %rcx
rep movsw
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x1c472, %rsi
lea addresses_WT_ht+0x9db2, %rdi
nop
sub $31437, %r15
mov $71, %rcx
rep movsq
nop
nop
xor $20992, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0x19db2, %r11
nop
nop
nop
nop
nop
and $36609, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%r11)
sub %rax, %rax

// Faulty Load
lea addresses_US+0x1e1b2, %r11
nop
nop
nop
nop
xor $64732, %rbx
movups (%r11), %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'00': 3, '47': 1}
47 00 00 00
*/
