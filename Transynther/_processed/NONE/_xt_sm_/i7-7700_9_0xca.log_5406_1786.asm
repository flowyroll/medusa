.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x3404, %rsi
nop
mfence
movb $0x61, (%rsi)
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x6866, %r8
clflush (%r8)
nop
nop
nop
sub %r11, %r11
movw $0x6162, (%r8)
cmp %r11, %r11
lea addresses_normal_ht+0x4e04, %rdx
nop
nop
dec %r11
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
lfence
lea addresses_WT_ht+0x8c04, %rdx
nop
nop
add %rbx, %rbx
movl $0x61626364, (%rdx)
dec %r11
lea addresses_UC_ht+0x5404, %r11
sub $51491, %rdx
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x1bbf4, %rsi
nop
nop
nop
nop
add %r12, %r12
movb (%rsi), %al
nop
nop
sub $65127, %r8
lea addresses_WT_ht+0x8630, %rsi
nop
nop
nop
nop
sub $126, %r11
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
dec %rbx
lea addresses_D_ht+0x3144, %rsi
lea addresses_WC_ht+0x13104, %rdi
nop
nop
nop
nop
cmp $14527, %rax
mov $95, %rcx
rep movsl
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0xd188, %r8
clflush (%r8)
nop
nop
nop
nop
add $65474, %rcx
movb $0x61, (%r8)
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0xa404, %rsi
lea addresses_D_ht+0x14204, %rdi
nop
nop
nop
and $17846, %r12
mov $26, %rcx
rep movsl
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1ae04, %rsi
lea addresses_A_ht+0x1ba77, %rdi
clflush (%rdi)
add $38472, %r8
mov $105, %rcx
rep movsq
add %rax, %rax
lea addresses_A_ht+0x6fa4, %rsi
lea addresses_WC_ht+0x143c6, %rdi
clflush (%rdi)
nop
and %r11, %r11
mov $69, %rcx
rep movsw
and $39591, %rax
lea addresses_normal_ht+0x84, %rdi
nop
xor %rbx, %rbx
movl $0x61626364, (%rdi)
nop
inc %r12
lea addresses_D_ht+0x16704, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm0
and $0xffffffffffffffc0, %rdi
vmovaps %ymm0, (%rdi)
nop
nop
xor %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r8
push %rdx

// Store
mov $0x67d55b0000000f04, %r14
xor %r10, %r10
movl $0x51525354, (%r14)
nop
nop
nop
nop
dec %r13

// Store
lea addresses_A+0x189e4, %rdx
nop
nop
and $61407, %r14
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
cmp $64565, %rdx

// Store
lea addresses_normal+0x8804, %r15
nop
nop
nop
cmp %r11, %r11
movl $0x51525354, (%r15)
nop
xor %r15, %r15

// Store
mov $0x18fe1d0000000e04, %r8
nop
add $25408, %r13
movw $0x5152, (%r8)
nop
nop
inc %r13

// Store
lea addresses_WT+0x3d04, %r8
nop
inc %r15
movl $0x51525354, (%r8)
nop
nop
cmp %r10, %r10

// Load
lea addresses_WT+0xde64, %r15
nop
nop
xor %r8, %r8
movups (%r15), %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_normal+0x6e04, %r13
nop
nop
nop
nop
and $38145, %r10
movl $0x51525354, (%r13)
nop
nop
nop
nop
add $988, %r15

// Faulty Load
lea addresses_normal+0x6e04, %r10
nop
nop
sub $33514, %r15
movb (%r10), %dl
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_D_ht'}}
{'54': 5406}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
