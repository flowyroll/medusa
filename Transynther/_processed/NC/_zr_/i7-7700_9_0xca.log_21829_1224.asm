.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x10ed2, %r15
clflush (%r15)
nop
nop
nop
nop
dec %r14
movl $0x61626364, (%r15)
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x15b12, %rax
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%rax), %bx
nop
nop
nop
nop
cmp $63963, %rbx
lea addresses_normal_ht+0xe212, %rdx
and $58556, %r11
mov (%rdx), %ax
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x2612, %rsi
lea addresses_normal_ht+0x1e012, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $51, %rcx
rep movsb
nop
nop
nop
nop
xor $10760, %rax
lea addresses_WC_ht+0x16ae2, %r15
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%r15)
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xbc12, %rsi
nop
nop
nop
cmp %r11, %r11
movb $0x61, (%rsi)
nop
dec %r8
lea addresses_D_ht+0x78de, %rsi
lea addresses_WC_ht+0xf212, %rdi
nop
nop
nop
dec %r14
mov $75, %rcx
rep movsl
nop
nop
nop
nop
and $4063, %rsi
lea addresses_A_ht+0xa492, %rdx
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0x1e8e2, %rsi
lea addresses_UC_ht+0x92d, %rdi
nop
nop
add %r11, %r11
mov $49, %rcx
rep movsb
nop
nop
nop
sub $50591, %rdi
lea addresses_normal_ht+0x790a, %r8
nop
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x8b4b, %rdi
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rdi)
nop
nop
dec %rdi
lea addresses_A_ht+0xa812, %rdi
xor $61053, %rbx
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x912, %r15
nop
nop
nop
nop
nop
sub %r14, %r14
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x5c12, %rdx
nop
nop
cmp $61601, %rdi
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x14012, %r14
nop
nop
xor %rcx, %rcx
movb (%r14), %r8b
sub %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbp
push %rdx
push %rsi

// Load
mov $0x459b1b0000000a12, %r8
nop
nop
nop
nop
xor %r12, %r12
mov (%r8), %esi
add $1690, %rsi

// Faulty Load
mov $0x459b1b0000000a12, %r12
nop
nop
xor %rsi, %rsi
mov (%r12), %bp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
