.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rsi
lea addresses_WC_ht+0x1458c, %rbp
nop
xor $35821, %r10
movb $0x61, (%rbp)
nop
nop
nop
add $46384, %r9
lea addresses_D_ht+0x418c, %rbp
xor $51406, %r13
movb (%rbp), %bl
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x16b9c, %r10
nop
and %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, (%r10)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0xf28c, %r10
cmp %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0x1404e, %rsi
nop
nop
dec %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rsi)
nop
nop
add $28825, %rcx
lea addresses_normal_ht+0x1bc8c, %rbp
xor $3598, %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%rbp)
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x19e7c, %r13
nop
nop
add $31680, %r9
movb $0x61, (%r13)
nop
nop
nop
cmp $11293, %rcx
lea addresses_A_ht+0x15a6c, %rbx
nop
nop
nop
sub $28541, %r13
movb (%rbx), %r9b
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x1b48c, %r10
nop
nop
nop
nop
nop
sub $6735, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r10)
sub %r9, %r9
lea addresses_A_ht+0xbfaa, %rbx
nop
nop
nop
nop
add $10409, %r13
mov (%rbx), %r10w
nop
sub $2597, %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rbx

// Store
mov $0x18c, %r10
clflush (%r10)
nop
nop
cmp %r9, %r9
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
xor $40447, %rax

// Faulty Load
lea addresses_normal+0xa98c, %rbx
clflush (%rbx)
nop
sub $8462, %r9
movb (%rbx), %r15b
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'34': 76}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
