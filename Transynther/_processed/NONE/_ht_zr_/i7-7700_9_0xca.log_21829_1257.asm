.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x8792, %rsi
lea addresses_WT_ht+0x133ca, %rdi
nop
nop
nop
xor $25468, %rax
mov $21, %rcx
rep movsq
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x14372, %rsi
lea addresses_D_ht+0x13072, %rdi
nop
nop
nop
inc %r10
mov $29, %rcx
rep movsb
nop
and %rcx, %rcx
lea addresses_WT_ht+0x19c52, %rsi
lea addresses_D_ht+0x36a2, %rdi
nop
nop
cmp %rax, %rax
mov $35, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x2572, %rdi
clflush (%rdi)
nop
nop
cmp $21075, %rbp
movl $0x61626364, (%rdi)
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x19572, %rsi
lea addresses_WC_ht+0x1bef2, %rdi
lfence
mov $83, %rcx
rep movsl
nop
nop
nop
nop
nop
and $36960, %r10
lea addresses_WC_ht+0x1712, %rsi
lea addresses_normal_ht+0xb472, %rdi
nop
nop
add $31067, %r8
mov $99, %rcx
rep movsw
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x8572, %rdi
cmp $61835, %r8
movl $0x61626364, (%rdi)
nop
nop
nop
nop
dec %r8
lea addresses_WC_ht+0x166f2, %rsi
nop
nop
nop
xor %r14, %r14
mov (%rsi), %eax
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x9272, %r14
and %rcx, %rcx
movb (%r14), %r8b
nop
nop
cmp $47157, %rax
lea addresses_normal_ht+0x150a2, %rsi
lea addresses_D_ht+0x16372, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $47274, %r14
mov $37, %rcx
rep movsq
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x502e, %rsi
nop
nop
nop
nop
nop
dec %r10
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
add $35355, %r14
lea addresses_normal_ht+0x1a9b2, %rcx
nop
nop
nop
add $2135, %rax
mov (%rcx), %ebp
nop
nop
nop
nop
sub $11398, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbx

// Faulty Load
lea addresses_A+0x1572, %r8
nop
nop
nop
cmp $47672, %r11
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rbx
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'44': 2377, '48': 7232, '00': 9656, '49': 2564}
00 44 00 48 00 48 00 00 00 48 48 00 48 00 00 00 00 00 00 49 48 00 00 44 48 48 44 48 49 44 00 00 48 00 00 00 00 49 49 48 49 48 44 48 44 48 48 00 00 49 48 00 49 48 44 48 48 00 48 00 48 49 48 00 00 48 00 00 49 48 00 00 49 48 44 48 44 00 48 48 48 00 48 00 00 49 48 00 00 49 48 48 00 00 44 48 48 00 00 44 48 48 00 00 49 48 00 00 44 48 48 00 48 48 00 00 44 00 49 48 00 49 00 48 00 00 48 00 48 00 00 00 00 00 48 48 48 00 00 48 44 48 44 49 48 48 49 00 00 48 48 00 48 48 48 48 48 00 00 44 00 44 48 48 00 00 44 48 44 48 49 49 48 00 00 00 48 00 00 48 00 00 49 00 48 00 00 00 48 49 48 00 49 48 48 00 00 44 48 00 48 44 48 00 00 00 00 48 00 00 00 48 00 00 48 49 48 48 00 00 44 00 49 49 48 44 48 00 48 00 00 44 48 49 48 00 48 49 49 48 00 00 44 48 44 00 44 48 00 48 00 00 44 48 00 48 49 48 00 00 00 49 48 48 00 00 49 48 44 00 48 00 00 44 48 00 48 48 48 00 00 49 00 00 00 49 48 44 48 44 48 00 48 48 00 00 00 00 49 48 00 00 49 49 48 00 00 49 48 00 00 48 44 48 00 00 00 44 48 48 00 00 00 48 48 00 48 00 00 49 48 49 44 00 44 00 48 00 48 44 00 48 00 48 00 48 00 48 00 48 00 48 00 00 49 48 00 48 00 48 00 00 44 48 00 49 48 00 00 44 48 48 00 00 49 48 00 00 48 48 00 48 00 00 00 00 49 44 00 48 49 48 48 00 48 49 49 48 00 00 49 49 48 00 00 44 48 48 00 00 49 00 44 00 48 00 48 00 00 49 48 49 48 49 48 00 00 00 00 49 49 48 00 00 49 00 44 48 48 00 00 49 48 48 48 48 00 00 49 48 49 00 48 00 48 00 00 00 48 49 00 48 00 00 49 48 48 00 00 00 00 44 48 44 48 48 48 48 00 00 00 48 00 00 49 48 48 00 00 48 00 00 49 00 49 44 00 48 00 00 49 48 49 49 48 48 00 48 48 00 00 00 48 44 48 49 48 00 44 48 48 00 00 49 48 00 00 44 48 44 48 44 00 48 00 00 44 48 49 48 44 00 48 00 00 44 48 00 00 44 48 00 48 44 00 44 48 00 48 00 00 00 00 00 00 49 48 48 00 48 00 48 49 48 48 00 00 49 48 00 48 00 00 44 00 44 48 44 00 49 44 00 44 00 48 00 49 00 00 49 48 48 00 00 00 49 48 00 48 00 00 44 48 00 00 49 48 44 00 48 00 00 00 00 44 00 44 00 48 48 48 00 00 48 44 00 49 48 00 00 48 49 48 00 48 48 00 48 00 00 49 48 44 48 00 49 48 44 48 48 00 48 00 00 00 00 49 48 00 49 48 00 00 00 48 00 00 44 48 00 48 00 44 48 48 00 48 49 48 48 00 44 48 44 00 44 00 48 44 48 44 48 44 00 49 48 48 00 48 44 48 48 00 48 00 48 00 00 44 48 44 48 44 48 48 00 00 44 48 44 48 00 00 00 48 00 00 49 48 49 48 48 00 00 44 48 00 49 48 00 48 00 00 00 00 49 49 48 00 00 44 48 48 00 00 49 48 48 00 00 00 44 00 48 00 00 49 44 00 44 48 48 00 48 00 00 00 00 00 48 44 00 00 44 00 48 00 48 00 00 49 48 48 48 00 00 48 49 48 48 00 48 00 00 49 00 49 00 00 49 48 00 00 00 00 48 00 00 44 48 00 00 00 44 00 44 00 44 48 44 00 48 00 48 44 48 00 48 48 00 00 44 48 44 48 00 49 48 00 00 44 48 00 00 49 44 48 00 00 00 48 00 00 49 48 48 00 48 00 48 00 00 44 48 48 00 00 44 00 44 00 00 00 00 48 00 00 44 48 00 48 44 00 00 49 44 48 44 48 48 00 48 49 44 00 00 48 00 00 00 48 49 49 48 00 00 44 00 44 00 00 49 48 48 00 00 48 48 00 00 48 48 00 00 44 00 44 00 44 48 48 00 00 44 48 00 49 48 00 00 00 49 00 48 00 48 00 00 49 44 00 49 44 48 00 00 44 00 48 00 00 44 48 48 00 00 00 00 49 48 49 48 48 00 00 49 49 48 00 00
*/
