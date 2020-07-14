.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1bc, %rsi
lea addresses_WC_ht+0x125bc, %rdi
nop
nop
sub %r10, %r10
mov $67, %rcx
rep movsb
nop
cmp $52427, %rax
lea addresses_UC_ht+0x21bc, %r14
nop
nop
nop
xor $32788, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r14)
nop
nop
xor $31420, %rdi
lea addresses_UC_ht+0x10ebc, %rsi
lea addresses_WC_ht+0x139bc, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r9, %r9
mov $120, %rcx
rep movsw
nop
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0x1689c, %rsi
nop
sub $35628, %r9
movl $0x61626364, (%rsi)
nop
sub $47746, %rsi
lea addresses_WT_ht+0x19fbc, %rsi
lea addresses_A_ht+0xaf0c, %rdi
nop
add $36155, %rax
mov $17, %rcx
rep movsq
nop
nop
nop
sub $28399, %r8
lea addresses_D_ht+0x3bc, %r8
clflush (%r8)
cmp %r10, %r10
movb $0x61, (%r8)
nop
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x11a1c, %r8
nop
cmp $25089, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%r8)
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x101d6, %rsi
lea addresses_UC_ht+0x19fe0, %rdi
sub %rax, %rax
mov $102, %rcx
rep movsw
nop
nop
nop
nop
sub $1718, %r10
lea addresses_WC_ht+0x175bc, %rcx
add $33205, %r9
mov (%rcx), %r10d
nop
lfence
lea addresses_A_ht+0x1d97c, %r9
nop
and %rcx, %rcx
vmovups (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x805d, %r9
nop
nop
nop
xor %r10, %r10
mov (%r9), %di
nop
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0x13840, %rsi
lea addresses_normal_ht+0x1c27c, %rdi
nop
xor $29792, %r10
mov $119, %rcx
rep movsl
nop
nop
nop
nop
nop
and $6827, %rsi
lea addresses_UC_ht+0x1903c, %r8
nop
nop
nop
nop
nop
and %rax, %rax
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
xor $1060, %rsi
lea addresses_WC_ht+0xd66c, %r8
nop
nop
nop
nop
sub $30930, %r9
movl $0x61626364, (%r8)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1589c, %r8
nop
nop
nop
and $61324, %rsi
movl $0x61626364, (%r8)
nop
nop
add $50165, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x1b3c, %r11
nop
nop
nop
nop
cmp $9784, %r8
mov (%r11), %rcx
inc %rbx

// Store
lea addresses_UC+0x3fbc, %r11
nop
nop
nop
xor $8149, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovaps %ymm0, (%r11)
cmp %rdi, %rdi

// Store
lea addresses_D+0x1d9bc, %rsi
clflush (%rsi)
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
xor %r11, %r11

// Store
mov $0x6230e3000000063c, %r11
inc %rsi
movw $0x5152, (%r11)
nop
nop
nop
add $12775, %r11

// Faulty Load
lea addresses_PSE+0xf1bc, %r8
nop
nop
nop
nop
nop
inc %rdi
mov (%r8), %r15w
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'33': 27}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
