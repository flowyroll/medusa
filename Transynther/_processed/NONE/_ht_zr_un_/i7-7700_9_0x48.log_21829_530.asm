.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xe3f6, %rsi
nop
lfence
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
cmp $44329, %rsi
lea addresses_WT_ht+0xecc6, %rsi
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xe0f6, %r10
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm1
and $0xffffffffffffffc0, %r10
vmovntdq %ymm1, (%r10)
nop
nop
nop
xor $63940, %r12
lea addresses_normal_ht+0x1e37a, %r9
nop
nop
nop
add $34545, %r8
movl $0x61626364, (%r9)
cmp $49661, %rsi
lea addresses_WT_ht+0x9cda, %rsi
lea addresses_A_ht+0x12096, %rdi
clflush (%rsi)
clflush (%rdi)
cmp %r12, %r12
mov $56, %rcx
rep movsl
sub %rdi, %rdi
lea addresses_normal_ht+0x406a, %rsi
lea addresses_A_ht+0xd8f6, %rdi
nop
nop
and %r10, %r10
mov $39, %rcx
rep movsw
nop
dec %r9
lea addresses_WT_ht+0x18bee, %rsi
lea addresses_normal_ht+0xf1b4, %rdi
nop
nop
nop
nop
add $1019, %r9
mov $123, %rcx
rep movsw
add %rdi, %rdi
lea addresses_UC_ht+0x15836, %rsi
lea addresses_D_ht+0xacf6, %rdi
and %r10, %r10
mov $120, %rcx
rep movsl
nop
nop
nop
nop
xor $4673, %rsi
lea addresses_normal_ht+0xffb6, %r12
nop
nop
nop
and %rcx, %rcx
vmovups (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x4551, %rsi
nop
nop
sub $18053, %r9
movw $0x6162, (%rsi)
sub $43249, %rdi
lea addresses_UC_ht+0x206a, %r9
nop
nop
xor $13477, %r10
mov (%r9), %r8w
nop
nop
and %r14, %r14
lea addresses_A_ht+0x1ce76, %rsi
lea addresses_D_ht+0x1c847, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r10
mov $92, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x7a20, %rcx
nop
nop
nop
nop
nop
sub $50929, %rsi
movw $0x6162, (%rcx)
nop
nop
and %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx

// Load
lea addresses_RW+0x1542, %r14
nop
add $21696, %r15
mov (%r14), %ecx
add $16543, %r9

// Store
lea addresses_PSE+0x14cbe, %rax
inc %r8
movl $0x51525354, (%rax)
nop
nop
nop
add $28718, %rcx

// Store
mov $0x6ce, %r14
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
dec %r11

// Store
lea addresses_A+0x978e, %r15
nop
nop
nop
nop
nop
cmp $555, %r14
mov $0x5152535455565758, %r11
movq %r11, (%r15)
nop
nop
xor %r8, %r8

// Store
mov $0x7883e00000005e6, %r15
inc %r9
movl $0x51525354, (%r15)
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_A+0x3ef6, %r9
nop
cmp $17550, %rax
movw $0x5152, (%r9)
nop
inc %r11

// Faulty Load
lea addresses_WT+0x1a4f6, %rcx
and %r8, %r8
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'68': 77, '47': 5119, 'ff': 1, '67': 315, '00': 16151, '49': 130, '45': 12, '44': 21, '1a': 3}
00 00 47 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 47 00 00 00 00 00 47 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 67 00 00 00 00 47 00 00 00 00 00 00 00 47 00 47 00 47 47 47 47 47 47 00 00 00 47 47 00 00 00 47 00 00 00 00 00 00 00 00 47 00 47 00 67 00 00 00 47 00 47 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 47 47 47 00 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 47 00 47 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 47 00 47 00 00 00 00 00 00 47 47 00 00 00 00 00 00 00 00 00 47 47 00 00 00 00 47 47 00 47 47 00 00 00 47 00 00 47 00 00 47 47 00 47 00 00 00 00 47 00 47 00 00 00 47 47 00 00 49 00 47 00 00 67 00 00 00 00 00 00 49 00 00 47 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 47 00 47 00 67 00 47 47 00 00 00 00 00 47 00 47 00 47 00 47 47 47 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 67 47 00 00 47 00 47 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 47 00 00 00 00 47 00 00 47 47 00 00 00 47 47 00 00 47 00 00 00 47 47 00 00 00 47 47 00 00 47 00 00 00 47 00 00 47 47 00 67 00 00 00 00 47 00 00 00 00 00 47 47 00 47 47 00 47 00 47 00 00 00 47 00 00 00 00 47 47 00 00 00 00 00 00 47 47 47 00 00 00 47 00 00 47 00 00 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 47 00 00 00 00 00 00 47 00 00 47 00 47 47 00 00 47 00 00 00 47 47 00 00 00 00 00 00 00 47 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 47 47 00 00 00 00 00 00 00 49 00 00 47 00 00 00 47 47 47 00 00 00 00 47 47 47 00 00 00 00 47 00 00 00 00 47 47 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 47 47 00 00 00 00 00 47 00 00 00 00 47 00 00 47 00 00 00 47 00 47 00 00 00 00 00 00 00 00 00 47 00 67 00 47 00 00 00 47 44 00 47 00 00 00 00 00 47 47 47 00 00 00 00 47 00 47 00 00 00 00 00 00 00 00 00 47 00 00 47 47 47 00 67 00 00 00 47 47 47 47 00 00 47 00 00 00 00 67 00 00 00 47 00 00 00 00 00 47 00 67 47 00 47 47 47 00 47 00 47 00 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 47 00 67 00 00 00 00 00 00 00 47 47 00 47 00 44 00 47 00 00 00 00 47 47 00 00 00 00 47 00 00 00 00 47 49 00 00 47 00 00 00 00 00 00 00 47 00 47 00 00 00 47 00 00 47 00 00 00 00 47 47 00 00 00 00 00 67 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 47 00 00 47 47 47 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 47 00 47 00 00 00 00 00 67 00 00 47 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 47 47 00 44 00 47 47 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 67 00 00 47 47 47 00 00 47 47 47 00 47 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 47 47 00 00 47 00 00 67 00 47 00 00 00 00 00 00 00 00 00 00 47 00 47 00 00 47 00 67 00 00 00 00 47 00 00 47 00 00 00 00 00 00 00 47 00 47
*/
