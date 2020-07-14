.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x11acd, %rdx
nop
nop
xor $38555, %rsi
mov (%rdx), %r11d
nop
and %rcx, %rcx
lea addresses_WC_ht+0x4091, %rsi
lea addresses_D_ht+0x1b2bd, %rdi
nop
nop
nop
nop
xor $55479, %r15
mov $8, %rcx
rep movsw
cmp $58284, %rcx
lea addresses_normal_ht+0x1344d, %rsi
nop
nop
nop
nop
nop
cmp %r11, %r11
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
and $26542, %r11
lea addresses_A_ht+0x1404d, %rcx
nop
sub $8493, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x9327, %rdi
nop
nop
nop
nop
nop
dec %r9
mov (%rdi), %si
nop
nop
xor $585, %rdx
lea addresses_WT_ht+0x2915, %rcx
nop
nop
nop
add %r11, %r11
movb $0x61, (%rcx)
nop
nop
nop
add $29825, %r11
lea addresses_WT_ht+0x1844d, %r15
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
xor $40374, %rdi
lea addresses_normal_ht+0x1215f, %rdi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rdi), %r11w
nop
nop
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rdi
push %rsi

// Store
mov $0x44d, %r8
nop
cmp $14682, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
cmp $55800, %rdi

// Store
lea addresses_A+0xfb4d, %r10
nop
nop
nop
nop
nop
and %rsi, %rsi
movw $0x5152, (%r10)
nop
nop
and $25063, %rax

// Load
lea addresses_A+0x14453, %rsi
nop
nop
nop
nop
inc %r10
movb (%rsi), %r15b
add %r15, %r15

// Store
lea addresses_WT+0x8d2d, %rsi
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
and $4599, %rax

// Faulty Load
mov $0x2b0cbd000000044d, %rsi
clflush (%rsi)
nop
sub %r15, %r15
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'42': 1, '00': 21828}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
