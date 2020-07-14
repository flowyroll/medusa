.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_WT+0xe16e, %rbp
cmp %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, (%rbp)
inc %rsi

// Store
mov $0x96e, %rsi
add $32694, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovaps %ymm5, (%rsi)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_US+0xf26e, %r11
nop
nop
nop
nop
nop
cmp $57201, %rbp
movw $0x5152, (%r11)
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_WT+0xee6e, %rbp
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%rbp), %r9b
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_P', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'39': 1}
39
*/
