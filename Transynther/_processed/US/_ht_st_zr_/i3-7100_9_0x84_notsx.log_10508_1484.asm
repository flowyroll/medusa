.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5dee, %rsi
add $29326, %rbx
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0x2c6e, %rsi
lea addresses_D_ht+0x136ee, %rdi
nop
nop
nop
nop
inc %r15
mov $126, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0xb2be, %rsi
lea addresses_D_ht+0xedee, %rdi
nop
nop
xor $60754, %r13
mov $42, %rcx
rep movsq
and %r13, %r13
lea addresses_UC_ht+0x7fee, %rdi
nop
nop
nop
nop
and $26506, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%rdi)
sub $30525, %r9
lea addresses_WT_ht+0xa07e, %rsi
lea addresses_WC_ht+0x19f0e, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $63, %rcx
rep movsq
nop
dec %r15
lea addresses_UC_ht+0x1d9ee, %rsi
lea addresses_normal_ht+0x5dee, %rdi
nop
nop
nop
sub %r11, %r11
mov $53, %rcx
rep movsw
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x9dee, %r15
nop
nop
nop
nop
nop
dec %rbx
mov (%r15), %r11d
nop
nop
dec %r15
lea addresses_WT_ht+0x1ed3c, %rsi
nop
nop
nop
nop
nop
and %r13, %r13
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
nop
and $32662, %rdi
lea addresses_WC_ht+0x5cce, %rcx
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x89ee, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
nop
xor $36685, %r13
lea addresses_normal_ht+0xfed4, %rbx
nop
and $29853, %r15
movl $0x61626364, (%rbx)
nop
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x193ee, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $30865, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x1bd0e, %r11
nop
nop
nop
xor $27344, %r15
mov (%r11), %rsi
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1326e, %rsi
lea addresses_WT_ht+0x14972, %rdi
sub $51835, %r13
mov $54, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $14141, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x1d5ee, %rsi
lea addresses_A+0xaa3a, %rdi
xor $48349, %rbx
mov $41, %rcx
rep movsw
nop
nop
add $11150, %rsi

// Load
lea addresses_RW+0x1f716, %rbx
nop
nop
xor %rdi, %rdi
vmovups (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
nop
nop
and $45870, %rbx

// Load
lea addresses_WT+0xf46e, %rcx
nop
nop
add %rax, %rax
mov (%rcx), %r9w
nop
sub $49182, %rbx

// Store
mov $0x56e, %rdx
nop
nop
cmp $16173, %rax
movl $0x51525354, (%rdx)
nop
nop
nop
cmp $1202, %rax

// Store
lea addresses_WC+0xd89e, %rdx
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rdx)
nop
add $41327, %rdi

// Store
lea addresses_D+0x91ee, %rbx
nop
nop
add $34843, %rax
movw $0x5152, (%rbx)
nop
nop
nop
nop
add $59307, %rax

// Store
mov $0xf6e, %rbx
nop
nop
and %rax, %rax
movb $0x51, (%rbx)
nop
nop
xor $52828, %rcx

// Faulty Load
lea addresses_US+0x145ee, %rcx
nop
nop
add %rdx, %rdx
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'48': 34, '32': 8818, '46': 68, '49': 22, '00': 1539, '45': 27}
00 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 00 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 00 32 00 32 32 00 32 32 32 32 32 32 49 00 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 00 32 32 32 32 00 32 32 32 32 32 00 32 00 00 32 00 32 00 32 32 00 32 32 32 32 32 32 32 32 32 00 49 00 00 32 00 32 32 32 32 32 32 32 00 32 00 32 00 32 00 32 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 32 00 32 00 32 32 00 32 32 32 32 32 00 32 32 32 32 32 32 32 45 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 00 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 45 32 00 32 32 00 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 00 32 00 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 00 00 00 32 32 32 32 00 32 32 00 00 00 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 00 32 32 32 32 32 32 32 00 32 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 00 32 32 32 00 46 32 32 00 32 32 00 00 32 32 32 32 00 32 32 32 32 32 32 00 32 00 32 32 48 32 32 32 32 00 32 48 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 00 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 32 00 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 00 32 32 32 32 32 00 32 32 00 00 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 00 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 00 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 00 32 32 32 32 32 32 00 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 45 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 00 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 00 46 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 00 32 32 32 00 00 32 32 00 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 00 32 32 32 32 32 00 32 32 32 32 46 32 32 32 32
*/
