.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12a79, %r15
nop
nop
nop
nop
xor $47182, %r13
movups (%r15), %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x7b89, %rsi
lea addresses_UC_ht+0xfa79, %rdi
nop
nop
nop
nop
inc %r10
mov $110, %rcx
rep movsl
nop
nop
cmp $33547, %r10
lea addresses_WC_ht+0xc879, %rdi
and %r13, %r13
mov (%rdi), %rsi
nop
nop
nop
nop
add $23030, %rsi
lea addresses_UC_ht+0x9079, %rsi
lea addresses_D_ht+0x8079, %rdi
cmp $43818, %r11
mov $122, %rcx
rep movsw
nop
nop
add $3117, %r12
lea addresses_UC_ht+0xd245, %rsi
lea addresses_UC_ht+0x12fd7, %rdi
nop
nop
add %r10, %r10
mov $82, %rcx
rep movsq
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x13879, %rcx
nop
nop
xor $32627, %r12
mov (%rcx), %rdi
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x19419, %rsi
lea addresses_D_ht+0x12879, %rdi
clflush (%rsi)
nop
nop
dec %r13
mov $56, %rcx
rep movsq
nop
nop
add $15709, %rdi
lea addresses_normal_ht+0x8b79, %rsi
lea addresses_A_ht+0x1b879, %rdi
clflush (%rdi)
sub $41150, %r12
mov $123, %rcx
rep movsq
nop
add %rcx, %rcx
lea addresses_WT_ht+0x14df9, %rdi
add %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
add %r12, %r12
lea addresses_A_ht+0x1f7b, %rsi
lea addresses_WT_ht+0x1b679, %rdi
sub $13552, %r13
mov $87, %rcx
rep movsw
add %r13, %r13
lea addresses_normal_ht+0xb6f5, %r10
nop
nop
sub %rcx, %rcx
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
nop
sub $22250, %r12
lea addresses_WT_ht+0xfd8a, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbx

// Store
lea addresses_UC+0x7079, %r8
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r8)
nop
nop
nop
xor $16009, %r13

// Faulty Load
lea addresses_US+0x1e879, %r11
nop
nop
nop
nop
add $47931, %rax
mov (%r11), %r10d
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'00': 86}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
