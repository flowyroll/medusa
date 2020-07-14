.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1275a, %rsi
nop
nop
xor %r8, %r8
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x1f32, %rsi
lea addresses_normal_ht+0x909a, %rdi
nop
nop
nop
nop
mfence
mov $95, %rcx
rep movsw
nop
nop
add $6294, %rsi
lea addresses_WT_ht+0xea5a, %r15
nop
nop
nop
nop
inc %rbx
movups (%r15), %xmm6
vpextrq $0, %xmm6, %rdi
add $33648, %r8
lea addresses_D_ht+0x1ba, %rsi
lea addresses_D_ht+0x1a02, %rdi
clflush (%rdi)
nop
sub %r11, %r11
mov $109, %rcx
rep movsq
xor $52042, %r15
lea addresses_A_ht+0xc75a, %rsi
lea addresses_WC_ht+0xb73a, %rdi
clflush (%rdi)
xor %rbx, %rbx
mov $84, %rcx
rep movsl
add %rdi, %rdi
lea addresses_WC_ht+0x185ca, %rsi
lea addresses_D_ht+0x1235a, %rdi
clflush (%rdi)
add $23638, %r11
mov $73, %rcx
rep movsb
nop
nop
nop
nop
nop
add $9224, %r11
lea addresses_D_ht+0x1235a, %r8
sub $50596, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r8)
xor %rsi, %rsi
lea addresses_WT_ht+0x1275a, %rsi
nop
nop
nop
xor %r10, %r10
movl $0x61626364, (%rsi)
nop
nop
inc %rdi
lea addresses_normal_ht+0x6026, %rbx
nop
lfence
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm0
vpextrq $0, %xmm0, %rdi
add %rsi, %rsi
lea addresses_normal_ht+0x12fda, %rsi
nop
inc %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
cmp $10049, %rsi
lea addresses_D_ht+0x5f5a, %rcx
nop
cmp $8398, %r11
mov (%rcx), %r15d
nop
nop
sub $29530, %rbx
lea addresses_UC_ht+0x1617a, %rsi
lea addresses_UC_ht+0x1df5a, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r15, %r15
mov $12, %rcx
rep movsb
nop
and %r10, %r10
lea addresses_WC_ht+0x10d5a, %rsi
lea addresses_WT_ht+0x1402a, %rdi
nop
sub %r8, %r8
mov $67, %rcx
rep movsw
nop
nop
and %r10, %r10
lea addresses_A_ht+0x19a4e, %rbx
clflush (%rbx)
nop
add $9614, %r8
movw $0x6162, (%rbx)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0xc85a, %r11
nop
nop
add $54833, %r15
mov (%r11), %esi
nop
nop
and %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0x1475a, %r15
nop
cmp $47363, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r15)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r15
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_RW+0x1639a, %r11
nop
nop
nop
nop
xor $8832, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
inc %rdi

// Load
lea addresses_PSE+0x175a, %r12
nop
cmp $28889, %r11
movups (%r12), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_UC+0x12d5a, %rcx
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
dec %r13

// Store
mov $0x4ba, %r11
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%r11)
nop
nop
xor %rdi, %rdi

// Faulty Load
mov $0x27c1160000000f5a, %r15
nop
nop
nop
nop
nop
sub $53251, %r12
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'f3': 1, 'd1': 1, '93': 464, 'ab': 5, '18': 1, '45': 5140, '6e': 1, 'ea': 1, '60': 148, '03': 9, '3b': 1, '49': 539, '46': 191, 'd0': 1, '75': 1, 'bb': 1, '3f': 1, '21': 1, 'aa': 1, '8f': 1, 'b9': 1, '99': 1, '15': 1, 'd6': 1, '90': 1, 'fa': 1, 'cf': 1, '00': 15181}
00 00 00 00 49 00 00 45 00 00 00 00 49 00 00 00 00 00 45 45 00 00 00 49 00 00 49 00 00 00 00 00 45 00 49 00 00 00 45 00 00 00 00 93 60 45 00 00 00 00 00 00 00 00 93 45 49 45 45 00 00 00 45 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 45 00 45 00 00 00 46 00 00 00 00 00 00 00 45 00 00 00 00 45 45 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 46 00 00 45 00 45 00 00 00 00 00 45 45 00 00 00 45 45 00 00 00 00 00 45 00 00 00 93 00 00 45 45 00 46 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 93 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 45 45 45 00 45 00 00 45 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 46 00 00 00 00 45 49 00 00 45 00 00 00 00 46 00 45 00 00 45 00 60 00 00 00 00 00 00 00 93 00 00 00 00 00 00 45 00 00 93 00 45 00 00 00 46 00 00 00 00 00 00 00 45 00 00 46 00 00 45 00 00 45 00 00 00 45 00 00 45 00 45 00 45 00 00 60 00 00 45 00 45 00 00 00 45 93 00 00 45 00 00 49 00 00 00 00 93 45 45 00 00 00 00 45 00 45 45 45 00 00 00 45 00 00 00 00 00 45 45 45 45 45 00 45 45 00 00 00 00 93 00 00 00 00 00 00 00 00 00 00 00 93 00 45 00 00 45 00 00 00 00 00 00 60 45 45 00 00 45 00 45 00 00 00 00 93 45 45 00 00 45 00 00 45 00 00 00 45 00 45 00 00 00 00 00 45 45 45 45 00 00 00 45 00 00 00 49 00 45 00 45 00 45 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 45 45 00 00 00 49 00 00 00 45 00 00 00 00 45 45 00 45 45 49 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 49 00 00 00 93 00 45 45 00 00 45 00 00 00 00 93 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 93 93 45 00 00 00 00 00 45 00 00 93 00 00 00 45 00 00 00 00 00 00 45 00 93 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 00 00 45 45 00 45 00 45 45 00 00 00 45 00 46 00 45 45 45 00 45 00 45 45 45 00 00 00 00 00 45 45 00 00 00 93 00 00 93 00 93 45 45 45 00 45 45 45 00 00 45 00 00 00 45 00 00 00 00 00 49 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 93 00 00 00 49 00 00 00 00 45 00 00 45 00 45 45 45 00 00 00 00 00 00 00 00 45 45 00 00 00 46 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 45 00 00 00 45 00 00 00 00 46 00 00 45 00 45 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 46 00 00 00 00 45 00 00 00 00 45 00 00 45 45 00 45 00 00 00 00 00 46 00 00 45 45 00 45 00 45 45 45 45 45 00 45 00 00 45 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 93 00 00 00 45 45 00 00 00 45 00 00 00 00 45 45 45 45 45 00 45 00 45 45 45 45 00 45 00 45 00 00 45 00 00 45 00 45 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 45 45 00 00 00 00 45 45 00 45 00 00 00 00 00 93 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 45 93 00 00 00 45 00 00 00 60 00 49 00 45 45 00 45 00 00 00 45 45 45 00 00 00 00 00 00 45 45 45 45 00 45 45 00 45 00 00 45 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 93 45 00 45 00 00 00 00 45 45 00 45 00 00 00 00 45 00 00 00 45 00 00 45 45 00 00 00
*/
