.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12652, %r8
nop
nop
add $10051, %r12
mov (%r8), %rbp
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x19792, %rsi
lea addresses_A_ht+0x1db2, %rdi
clflush (%rdi)
nop
nop
nop
xor $64426, %rbx
mov $32, %rcx
rep movsl
nop
and $45115, %rsi
lea addresses_WT_ht+0x181df, %r8
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
nop
nop
nop
and $31565, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0x16052, %rdi
nop
xor %rsi, %rsi
movw $0x5152, (%rdi)
nop
nop
nop
and $17270, %r9

// Store
lea addresses_RW+0x1da92, %r9
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%r9)
add %rax, %rax

// Faulty Load
lea addresses_WC+0x15292, %r15
nop
nop
add %r10, %r10
vmovntdqa (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'70': 1, '2e': 1, 'd9': 1, 'a1': 1, '68': 14, '38': 1, '52': 5233, '66': 1, '80': 1, '46': 1, 'c4': 1, 'ca': 1, '20': 1, 'd1': 1, '90': 1, '00': 16562, '07': 1, '67': 5, '74': 1}
00 52 00 00 52 00 52 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 52 52 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 52 00 52 52 52 00 52 00 00 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 00 00 52 00 00 52 00 00 00 00 00 00 00 52 00 52 00 00 00 52 52 00 00 00 00 00 00 52 00 00 52 00 00 00 00 52 52 52 00 00 00 52 00 00 00 00 00 00 00 52 00 00 00 52 52 52 52 00 00 00 00 00 00 00 00 00 52 00 00 52 52 52 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 67 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 52 00 00 00 00 00 52 52 52 00 00 00 00 00 00 52 52 52 00 52 00 00 52 00 00 00 00 00 00 52 68 00 00 52 52 52 00 00 00 00 52 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 52 52 00 52 00 00 00 52 52 52 00 00 00 00 00 52 52 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 52 00 52 52 52 52 52 00 00 00 52 00 52 00 00 00 52 00 00 00 00 52 00 00 00 52 52 00 00 00 00 52 00 52 00 52 52 52 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 52 00 52 00 00 00 00 00 00 52 00 00 52 00 00 52 00 52 52 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 52 52 00 52 00 00 00 00 52 00 00 52 00 52 52 52 52 00 00 00 00 00 52 00 00 52 52 52 00 00 00 52 52 52 52 00 00 00 00 00 00 00 00 52 52 00 00 00 52 00 00 52 52 52 00 00 00 00 52 52 52 00 52 52 00 52 00 00 52 52 00 00 00 52 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 52 00 52 00 52 52 52 52 00 00 00 00 00 00 00 00 00 52 00 52 52 00 00 00 52 52 52 00 52 52 52 00 00 00 00 00 52 52 00 52 00 00 00 00 00 00 52 52 52 00 00 00 52 52 52 00 00 00 52 52 00 00 00 00 00 52 52 00 52 52 52 00 00 52 00 00 00 52 00 52 52 52 52 52 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 52 00 52 52 52 52 00 00 52 52 52 52 52 00 00 00 52 52 52 00 00 00 52 00 00 00 00 52 00 00 00 52 00 00 00 00 00 52 00 00 00 00 52 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 52 00 52 52 00 00 00 00 00 00 00 00 52 52 00 52 52 00 00 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 52 52 52 00 52 00 00 52 00 00 00 00 00 00 52 00 00 52 52 00 00 52 52 00 00 00 00 68 00 00 52 00 00 00 52 52 00 00 00 00 00 00 00 52 52 00 00 00 52 00 00 52 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 52 52 52 52 52 00 00 00 52 52 52 00 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 52 52 52 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 52 00 52 52 52 00 00 52 52 00 52 00 52 00 00 52 52 52 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 00 52 00 52 00 00 52 52 52 00 00 00 00 52 52 00 52 00 00 00 00 00 52 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
