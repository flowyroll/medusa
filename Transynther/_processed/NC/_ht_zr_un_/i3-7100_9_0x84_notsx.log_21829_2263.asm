.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x95b, %r8
nop
nop
nop
nop
add $49689, %r12
movl $0x61626364, (%r8)
nop
nop
nop
add $42427, %r15
lea addresses_D_ht+0x2cfb, %rsi
lea addresses_WT_ht+0xba35, %rdi
nop
nop
nop
nop
nop
and $58473, %r12
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x14473, %r12
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm0
and $0xffffffffffffffc0, %r12
movaps %xmm0, (%r12)
nop
add $33567, %r8
lea addresses_UC_ht+0x1d050, %r12
nop
nop
add %rsi, %rsi
movb (%r12), %r8b
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x737, %rcx
nop
dec %rbp
movl $0x61626364, (%rcx)
nop
nop
nop
nop
sub $50996, %rbp
lea addresses_UC_ht+0x19a43, %r12
nop
sub $20059, %r15
mov (%r12), %bp
nop
nop
add $48477, %rcx
lea addresses_normal_ht+0x934b, %r15
nop
nop
nop
xor %r12, %r12
mov (%r15), %r8d
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x1ebb, %rdi
nop
dec %rbp
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
nop
nop
nop
and $45491, %rsi
lea addresses_normal_ht+0x1015b, %rsi
nop
xor $24752, %rdi
movb $0x61, (%rsi)
cmp %rcx, %rcx
lea addresses_UC_ht+0x19b5b, %rsi
lea addresses_WT_ht+0xcf5b, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $70, %rcx
rep movsq
nop
nop
cmp $47237, %rdi
lea addresses_D_ht+0xc825, %rsi
lea addresses_A_ht+0xb81b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $11171, %r8
mov $114, %rcx
rep movsl
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0xf4db, %r15
clflush (%r15)
sub $33642, %r12
vmovups (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
nop
nop
cmp $54268, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Load
lea addresses_WC+0x4b5b, %rbp
nop
nop
nop
nop
nop
sub $41301, %r11
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %rax
nop
dec %r11

// Store
lea addresses_UC+0x932d, %rbp
nop
nop
xor $13778, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
cmp %rax, %rax

// Faulty Load
mov $0x211ac8000000035b, %rbx
nop
nop
dec %r11
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 5935, '00': 15891, '47': 2, '83': 1}
00 00 00 46 00 00 00 00 00 46 00 00 46 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 46 46 00 00 46 00 00 00 00 46 00 00 46 00 00 46 00 46 46 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 00 46 00 00 46 00 00 46 00 46 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 46 00 46 00 00 00 46 00 00 46 00 46 00 00 00 46 00 00 46 00 46 00 46 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 46 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 46 00 00 46 00 46 00 00 46 00 46 00 00 46 00 00 00 00 46 00 46 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 46 00 00 46 00 46 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 46 00 46 00 00 46 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 46 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 46 00 00 46 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 46 00 00 46 00 46 00 00 46 00 00 46 00 00 00 46 00 00 46 00 00 46 00 00 46 00 46 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 46 00 00 00 00 00 46 00 00 00 00 46 00 46 00 00 00 00 00 46 00 00 46 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 00 00 00 46 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 46 46 00 00 00 00 00 00 46 00 46 00 00 46 00 46 00 00 46 00 00 46 00 00 00 00 46 00 46 00 00 46 00 00 00 00 00 46 00 46 00 00 00 46 00 00 46 00 00 46 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 46 00 00 46 00 46 00 00 46 00 00 46 00 46 00 00 46 00 46 00 46 00 00 46 00 00 46 00 00 46 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 46 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 00 46 00 00 46 00 00 46 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 00 46 00 46 00 00 46 00 00 46 00 00 46 00 46 00 00 00 00 46 00 00 46 00 00 46 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 00 46 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 46 00 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 46 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46 00 00 46
*/
