.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x10cbd, %rdx
and %rbp, %rbp
mov (%rdx), %r14w
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x9ced, %rsi
lea addresses_D_ht+0x17721, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $124, %rcx
rep movsw
nop
nop
nop
nop
add $38539, %rcx
lea addresses_WT_ht+0x513d, %rbp
nop
nop
nop
and $54623, %rdx
movb (%rbp), %cl
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x20bd, %rdx
nop
nop
inc %r14
movb $0x61, (%rdx)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1b855, %rdx
nop
sub $13064, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rsi

// Store
lea addresses_A+0x383d, %r12
nop
nop
and %rbx, %rbx
movb $0x51, (%r12)
inc %rbp

// Store
lea addresses_PSE+0x198bd, %rsi
dec %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rsi)
dec %r15

// Store
lea addresses_D+0x18601, %r15
nop
nop
and %r11, %r11
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_WC+0x1f5bd, %r10
nop
nop
nop
nop
add $5956, %r15
movb $0x51, (%r10)
nop
and %r15, %r15

// Faulty Load
lea addresses_WT+0x1eebd, %r15
nop
cmp $11239, %r10
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rsi
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'44': 11446, '47': 690, '00': 1647, 'ff': 3696, '53': 809, '45': 908, '49': 2633}
45 00 44 44 45 47 ff 44 44 ff 44 00 44 44 ff ff 49 44 00 44 49 ff 44 44 00 49 47 00 44 53 44 44 53 47 44 44 44 00 49 00 ff 44 44 49 44 44 ff 44 44 44 53 47 44 53 00 44 44 49 00 49 44 53 44 44 44 ff 47 ff 44 44 44 00 44 44 44 ff 44 44 44 ff 00 44 44 ff 44 ff ff 44 53 44 ff 44 00 44 53 44 44 44 ff 44 44 44 44 ff ff ff 44 45 44 45 44 44 49 44 ff 44 49 44 ff 44 49 44 44 49 44 44 44 44 ff 00 44 44 44 44 ff 44 ff 44 44 44 44 44 ff 49 44 44 44 49 00 44 44 44 ff ff 00 44 44 44 44 44 45 44 44 44 44 44 49 49 44 ff 44 ff ff 44 44 44 ff 45 00 44 44 49 44 49 47 ff 44 49 47 44 ff 44 44 00 44 44 44 45 ff 44 44 53 47 44 49 44 44 44 44 44 ff 00 44 44 44 49 00 47 44 44 44 00 45 00 49 49 44 44 ff 49 44 44 44 44 ff 45 00 44 53 49 44 44 44 44 44 49 00 49 00 53 44 44 49 47 44 ff 44 44 44 44 44 44 53 ff 45 44 44 49 00 00 44 ff ff ff 49 44 44 45 00 44 ff 49 00 44 44 44 49 ff 44 44 49 44 ff 44 44 00 44 44 00 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 ff 44 44 44 00 00 44 44 44 44 ff 44 53 44 49 44 44 49 00 ff 44 44 49 47 47 44 44 44 44 00 44 44 44 ff ff 44 44 49 00 44 ff 44 53 00 44 ff 44 ff ff ff 45 00 44 ff ff 44 44 ff 44 47 00 44 49 47 44 44 44 44 49 47 49 47 44 44 44 44 44 ff 45 00 44 44 44 44 ff 44 44 49 44 44 44 49 00 44 44 ff 45 49 00 44 ff ff ff 44 45 44 44 44 44 44 53 44 ff 49 47 44 53 ff 44 49 45 00 00 ff ff 44 44 49 44 49 ff 44 00 44 45 44 44 44 45 00 44 44 ff ff 44 44 44 44 53 44 53 47 00 44 49 00 49 ff 44 45 44 44 ff ff ff 49 44 44 44 45 44 44 ff 44 44 49 44 ff 44 44 ff 44 44 45 44 44 44 ff 49 44 45 44 49 44 44 44 44 49 44 44 49 00 44 44 44 ff ff 44 44 45 45 ff 44 45 44 44 44 44 44 44 44 44 45 47 00 ff 44 ff 44 49 44 44 44 44 44 44 53 00 00 44 44 44 49 44 44 ff 44 ff 44 44 44 45 00 ff ff 49 44 53 44 44 44 ff 44 44 44 44 ff 44 53 44 44 44 ff 45 44 49 44 44 44 44 44 ff 44 44 44 53 44 44 44 45 00 44 44 ff 49 ff 49 44 ff 49 44 44 44 44 00 44 44 49 47 44 ff 44 44 44 44 45 44 ff 44 53 47 ff 00 44 44 44 44 44 44 44 49 44 ff 44 53 ff 49 44 ff ff 49 44 ff 44 44 44 00 45 44 44 45 00 44 44 ff 44 44 ff ff ff ff ff ff 44 44 44 44 ff 45 44 44 44 44 49 00 44 44 ff 44 49 44 44 45 44 44 44 ff 44 49 00 44 49 ff 44 44 49 00 49 ff 45 44 49 00 44 44 44 44 44 45 47 44 53 44 44 44 44 44 44 ff 44 ff 44 44 53 00 44 44 44 45 49 44 ff 44 44 ff ff ff 44 45 47 44 44 ff 44 44 44 44 44 44 49 00 49 44 44 44 53 44 49 44 44 44 44 44 44 49 47 44 44 44 45 44 44 53 44 49 00 ff 49 44 49 44 44 ff 44 44 44 44 ff 44 49 47 ff ff ff 45 47 00 44 44 44 ff 44 44 ff ff ff 44 49 00 ff ff ff 44 ff 44 ff 49 47 47 44 49 44 44 44 49 44 44 00 ff ff 44 44 49 44 44 00 ff 44 ff 44 44 44 00 44 45 44 44 00 44 ff 49 44 44 ff ff 49 47 44 ff 44 53 44 ff 44 44 ff 44 49 44 49 44 53 44 49 00 ff 44 44 45 44 49 47 ff 45 44 44 44 ff 44 44 44 44 44 44 44 44 45 44 44 44 44 44 53 00 44 ff 44 ff 44 ff 00 44 ff 44 00 00 44 44 44 44 ff 49 ff ff ff 53 44 44 44 44 44 44 53 44 49 45 44 44 44 ff ff ff 44 44 49 44 ff 44 49 44 49 ff ff 44 00 44 49 00 44 49 ff 44 53 44 ff 44 ff 44 44 44 44 44 44 44 44 44 44 53 00 ff 49 44 ff 44 44
*/
