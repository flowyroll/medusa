.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xb74f, %rsi
lea addresses_A_ht+0x16777, %rdi
clflush (%rsi)
nop
nop
cmp $25104, %rdx
mov $50, %rcx
rep movsl
xor %rdi, %rdi
lea addresses_UC_ht+0x1074f, %rsi
lea addresses_UC_ht+0x16f4f, %rdi
nop
and $23577, %r8
mov $53, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x10df5, %rsi
lea addresses_WC_ht+0xb74f, %rdi
nop
nop
nop
cmp $59194, %r10
mov $55, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $58175, %rcx
lea addresses_WT_ht+0x1474f, %rsi
lea addresses_A_ht+0x66db, %rdi
nop
sub $26831, %r11
mov $39, %rcx
rep movsq
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xad4f, %rdx
nop
dec %r8
mov (%rdx), %r11d
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x77d7, %r8
nop
nop
nop
and $27693, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x28c7, %rcx
nop
nop
nop
nop
sub $53877, %r10
mov (%rcx), %r11
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x468f, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%rdi), %edx
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x1ae0b, %rdi
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0xcbe6, %r10
nop
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x1714f, %rsi
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x1294f, %rsi
lea addresses_WT_ht+0xd393, %rdi
nop
nop
xor %rdx, %rdx
mov $20, %rcx
rep movsw
nop
nop
xor $3391, %r8
lea addresses_normal_ht+0xc4e5, %rcx
dec %rdi
mov (%rcx), %edx
nop
sub %rsi, %rsi
lea addresses_D_ht+0x784f, %rdi
nop
dec %r8
movb $0x61, (%rdi)
nop
xor $5319, %r10
lea addresses_WC_ht+0x98f, %rdi
nop
nop
nop
nop
nop
xor $59300, %r8
movb (%rdi), %cl
nop
nop
nop
nop
cmp $46861, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rsi

// Store
lea addresses_D+0x2337, %r15
nop
nop
nop
nop
cmp %r13, %r13
movb $0x51, (%r15)
nop
nop
xor $6719, %rsi

// Store
mov $0x94f, %rsi
nop
nop
xor $24508, %r12
movw $0x5152, (%rsi)
nop
nop
sub %r15, %r15

// Store
lea addresses_WC+0x6a77, %r14
nop
nop
dec %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_normal+0x63a3, %r15
sub %rcx, %rcx
movb $0x51, (%r15)
nop
nop
xor $6718, %r11

// Store
lea addresses_WT+0x574f, %r15
nop
nop
nop
nop
add $37661, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_WC+0x2c35, %r12
nop
nop
cmp $51259, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r12)
nop
cmp $57543, %r15

// Store
lea addresses_WC+0x834f, %rcx
nop
nop
nop
nop
xor $15966, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
inc %r12

// Store
lea addresses_WT+0x574f, %r11
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r11)
and $61689, %rcx

// Faulty Load
lea addresses_WT+0x574f, %r13
clflush (%r13)
and $38817, %rcx
movaps (%r13), %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6}}
{'49': 2, '00': 21827}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
