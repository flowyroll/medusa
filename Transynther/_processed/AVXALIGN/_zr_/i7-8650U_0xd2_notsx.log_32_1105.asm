.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1c13, %rax
nop
nop
nop
nop
nop
xor $24505, %r9
mov (%rax), %dx
nop
add $64915, %r8
lea addresses_WT_ht+0x17a86, %rsi
lea addresses_UC_ht+0x55a1, %rdi
clflush (%rdi)
nop
nop
and %rbp, %rbp
mov $41, %rcx
rep movsw
and $8083, %r8
lea addresses_WC_ht+0xcca1, %rax
xor $1129, %rcx
mov (%rax), %ebp
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x11409, %rsi
lea addresses_UC_ht+0x10d89, %rdi
nop
nop
nop
inc %r9
mov $125, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $37655, %r8
lea addresses_WT_ht+0x147a1, %rsi
lea addresses_WC_ht+0x1d7a1, %rdi
nop
nop
nop
nop
nop
and $22521, %rdx
mov $14, %rcx
rep movsq
nop
nop
add $60985, %r8
lea addresses_WT_ht+0x17971, %rsi
lea addresses_UC_ht+0x27a1, %rdi
nop
sub $37479, %r8
mov $37, %rcx
rep movsb
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0xd521, %r8
nop
nop
nop
nop
nop
add $57011, %r9
movb $0x61, (%r8)
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1b883, %r8
nop
nop
nop
nop
nop
inc %rdi
movb $0x61, (%r8)
nop
add $56833, %rbp
lea addresses_WT_ht+0xada1, %r8
add %rsi, %rsi
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
xor $2696, %rdi
lea addresses_WT_ht+0x18da1, %rcx
nop
nop
nop
nop
sub $27371, %rdi
mov (%rcx), %rbp
xor $23065, %r8
lea addresses_A_ht+0x51a1, %rsi
sub %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rsi)
nop
xor $48256, %rdx
lea addresses_WC_ht+0x1db21, %rcx
nop
nop
nop
nop
nop
and $11054, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0xe8a1, %rdi
and $994, %r9
movb $0x61, (%rdi)
nop
and $61869, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x131a1, %rsi
xor %rdx, %rdx
movw $0x5152, (%rsi)
nop
add $40918, %r13

// Store
mov $0x4bc9310000000da1, %rdx
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%rdx)
nop
nop
nop
xor %rbx, %rbx

// Store
mov $0xb21, %r13
nop
nop
nop
nop
nop
add $31642, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_A+0x7621, %rdx
nop
nop
nop
xor $59692, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
and %rsi, %rsi

// Faulty Load
mov $0x4bc9310000000da1, %rdx
nop
nop
and %rdi, %rdi
movntdqa (%rdx), %xmm5
vpextrq $1, %xmm5, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 32}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
