.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1d909, %rbx
nop
nop
nop
nop
nop
sub $49941, %rbp
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0xc659, %r9
nop
nop
cmp %r11, %r11
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
sub $14348, %r9
lea addresses_WT_ht+0x1c529, %r8
nop
nop
nop
nop
nop
dec %r14
movl $0x61626364, (%r8)
nop
inc %r8
lea addresses_D_ht+0x135a9, %rsi
lea addresses_normal_ht+0x7529, %rdi
nop
nop
nop
sub $23839, %rbp
mov $40, %rcx
rep movsw
nop
nop
nop
xor $41148, %rbx
lea addresses_WC_ht+0xbc99, %rsi
lea addresses_A_ht+0x10b09, %rdi
clflush (%rsi)
nop
nop
and %rbp, %rbp
mov $31, %rcx
rep movsq
nop
nop
nop
sub $7191, %rcx
lea addresses_normal_ht+0x7d29, %rsi
lea addresses_UC_ht+0xd339, %rdi
nop
inc %rbp
mov $15, %rcx
rep movsl
nop
nop
nop
nop
add $7162, %rbx
lea addresses_UC_ht+0x15b29, %rsi
lea addresses_WT_ht+0x10ca9, %rdi
clflush (%rdi)
nop
nop
nop
cmp $22172, %r14
mov $5, %rcx
rep movsq
cmp %rcx, %rcx
lea addresses_A_ht+0xad29, %r11
cmp %rsi, %rsi
mov (%r11), %ebx
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0xc829, %rsi
lea addresses_D_ht+0xcfb3, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $32, %rcx
rep movsq
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x549, %rsi
lea addresses_UC_ht+0x1a7a9, %rdi
nop
nop
sub $56929, %rbx
mov $73, %rcx
rep movsb
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0xf229, %rcx
clflush (%rcx)
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
xor $1536, %rdx

// Faulty Load
lea addresses_US+0x18d29, %r8
nop
nop
add %rax, %rax
mov (%r8), %ecx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
