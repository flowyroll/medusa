.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x3344, %r11
cmp %r13, %r13
mov (%r11), %rdx
nop
and $9755, %r13
lea addresses_D_ht+0x1e860, %r10
nop
nop
nop
nop
nop
cmp %r8, %r8
movb $0x61, (%r10)
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x1e9c4, %rdi
nop
nop
xor $6760, %r8
movw $0x6162, (%rdi)
sub %r11, %r11
lea addresses_WC_ht+0x1e884, %r13
xor $38602, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r13)
cmp $50157, %r13
lea addresses_UC_ht+0x11b84, %r10
nop
nop
nop
nop
add %r9, %r9
mov (%r10), %rdx
nop
dec %r9
lea addresses_UC_ht+0xcc4, %rsi
lea addresses_normal_ht+0x11f84, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $8, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $39708, %rsi
lea addresses_D_ht+0xd584, %r10
nop
nop
nop
add %rdx, %rdx
mov (%r10), %r8
nop
nop
nop
nop
nop
xor $53944, %rdx
lea addresses_D_ht+0x1d650, %rsi
nop
nop
nop
nop
nop
and %r9, %r9
movb $0x61, (%rsi)
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x5dea, %rcx
nop
nop
nop
nop
nop
and %r8, %r8
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x19b84, %rsi
lea addresses_WC_ht+0x12484, %rdi
xor %r13, %r13
mov $92, %rcx
rep movsq
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0xb484, %rsi
lea addresses_WC_ht+0x4084, %rdi
nop
sub $17103, %r8
mov $108, %rcx
rep movsb
dec %r8
lea addresses_UC_ht+0x1884, %r11
nop
sub %rdx, %rdx
movb $0x61, (%r11)
nop
sub %rcx, %rcx
lea addresses_D_ht+0x1c884, %rsi
lea addresses_UC_ht+0x6d7b, %rdi
and %r8, %r8
mov $89, %rcx
rep movsq
nop
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x1a40, %rsi
lea addresses_UC_ht+0x1ef84, %rdi
nop
nop
nop
nop
cmp $19295, %r13
mov $53, %rcx
rep movsl
nop
add $61150, %rcx
lea addresses_WC_ht+0xf704, %rsi
lea addresses_A_ht+0x12084, %rdi
nop
nop
nop
nop
cmp $46008, %r9
mov $78, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi

// Store
mov $0x684, %r11
nop
nop
nop
xor $36292, %rdi
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Faulty Load
mov $0x743e0f0000000884, %rsi
nop
nop
nop
add $51097, %rcx
vmovaps (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'46': 20021, '44': 32, '00': 1514, '48': 262}
00 46 00 00 00 46 46 46 46 46 46 46 46 00 00 00 00 46 00 00 00 46 00 00 48 00 00 00 00 00 00 00 46 00 46 00 48 00 46 46 00 00 00 46 00 46 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 46 00 00 00 46 00 00 00 46 00 00 00 48 00 46 00 00 00 00 00 00 46 46 00 00 00 48 00 46 00 00 00 48 00 00 00 00 46 00 46 00 00 46 00 00 00 46 00 00 00 48 00 48 00 00 00 46 48 00 46 00 00 00 00 46 00 46 00 00 00 00 00 46 46 48 00 46 48 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 48 00 00 00 00 00 46 00 00 00 00 46 00 00 00 48 00 00 00 00 00 46 00 00 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 00 00 48 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
