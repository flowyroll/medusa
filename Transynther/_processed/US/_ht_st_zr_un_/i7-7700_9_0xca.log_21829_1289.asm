.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x121bd, %rsi
lea addresses_A_ht+0x154d1, %rdi
nop
dec %rdx
mov $127, %rcx
rep movsq
add $38702, %rsi
lea addresses_A_ht+0x1bcbd, %r11
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r11)
nop
add $56893, %r9
lea addresses_WT_ht+0x520d, %rsi
xor $33059, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm3
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm3, (%rsi)
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x80bd, %rdi
nop
nop
nop
add $29998, %r12
movl $0x61626364, (%rdi)
nop
cmp $21561, %r11
lea addresses_A_ht+0x459a, %r12
nop
nop
nop
nop
nop
xor %rdx, %rdx
movw $0x6162, (%r12)
nop
nop
nop
add $36018, %r9
lea addresses_normal_ht+0x5bcd, %rcx
nop
nop
nop
nop
nop
add $3488, %r9
movb $0x61, (%rcx)
and $23202, %rcx
lea addresses_D_ht+0x196bd, %rsi
add $17759, %rdx
movw $0x6162, (%rsi)
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_RW+0x10c91, %rax
nop
nop
nop
nop
cmp $47843, %r14
movl $0x51525354, (%rax)
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_US+0x19bd, %r9
clflush (%r9)
inc %rsi
movups (%r9), %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'48': 2193, '40': 6, '00': 8309, 'ff': 9625, '52': 1, '29': 1, '53': 1685, '02': 4, '3c': 4, 'e0': 1}
00 00 00 00 00 53 00 ff ff ff 48 48 00 48 00 48 00 00 00 00 ff 00 00 ff ff 53 ff ff ff ff 53 ff 53 ff ff ff ff 48 ff 00 00 48 ff 00 00 00 00 00 ff ff ff ff ff ff ff ff 00 ff 48 ff ff ff 48 48 00 00 00 48 ff ff 00 00 ff 00 48 00 00 ff ff 48 00 53 00 53 00 00 00 00 00 00 00 ff ff ff 48 ff ff ff ff ff 00 ff 00 ff 53 00 00 ff 48 48 00 ff ff 00 00 00 00 53 48 ff ff 00 ff ff ff 00 00 ff 00 00 00 ff ff 53 48 00 ff ff ff ff 00 00 00 ff ff ff ff ff ff ff ff 48 00 00 00 ff ff ff 00 ff 00 ff 00 00 00 00 48 48 ff 48 48 00 ff 00 ff ff ff 48 ff ff ff ff 00 00 ff ff 00 00 ff ff ff ff ff ff ff ff ff ff 53 ff 53 00 ff ff 48 ff ff ff ff ff 53 00 00 ff ff 00 ff 00 48 ff ff ff ff 00 48 00 00 ff ff 48 ff 48 00 00 ff ff 00 53 00 ff ff 48 ff ff 48 53 00 ff 48 48 ff ff ff ff ff ff ff 00 ff ff ff ff 00 ff ff ff ff ff ff 00 ff ff 48 00 ff ff ff ff ff ff ff ff 48 ff ff 00 00 ff 00 ff ff ff ff ff ff ff ff ff ff ff 00 00 ff ff ff ff ff 00 48 53 ff ff ff ff 53 ff 00 00 00 48 00 ff 53 ff ff ff ff 53 00 00 00 00 00 00 00 00 00 48 00 ff ff ff ff ff ff 53 ff ff 00 ff ff 00 00 00 ff ff ff 00 00 53 00 48 ff ff ff ff 48 ff 53 ff 48 ff 00 00 00 00 00 ff ff 53 00 00 00 53 00 00 53 00 00 ff ff ff ff 53 00 00 ff ff 48 00 48 ff ff ff ff ff ff ff 00 48 ff ff 00 ff ff ff 53 ff 48 ff ff 53 53 00 ff ff 40 00 00 00 00 00 53 00 ff ff ff ff 48 00 00 48 ff ff 00 00 00 00 00 ff 48 ff 00 00 ff 53 00 00 00 00 00 ff ff 00 00 00 00 ff 00 00 ff 00 48 ff ff ff 00 00 53 00 00 00 ff ff ff ff ff ff ff 00 00 48 00 ff ff ff 00 53 ff ff 00 00 ff 00 53 00 53 00 53 00 48 00 00 ff 00 ff 00 48 00 00 00 00 ff 53 00 ff 48 00 53 00 ff ff ff 00 ff 53 ff 53 48 00 ff 53 ff ff 48 ff 48 00 ff 00 00 48 48 ff ff ff ff ff ff 00 ff ff ff 53 53 00 00 00 ff ff ff 00 ff ff ff 48 ff 00 00 00 00 00 ff ff 00 ff ff ff ff ff ff 48 ff ff 48 ff 48 ff 00 ff ff ff ff 53 00 00 00 00 00 00 ff ff ff ff ff ff ff 00 00 00 00 53 00 ff ff ff 53 ff ff 53 ff 48 00 00 53 ff 48 48 00 00 ff 00 48 48 00 ff ff 53 ff ff 53 48 00 00 00 ff 00 00 ff ff ff ff ff 53 ff ff 48 00 00 00 ff ff ff 00 00 ff ff 53 53 00 00 53 00 00 00 00 53 00 00 00 ff ff ff ff 53 ff 48 00 00 00 00 00 00 00 00 ff ff 00 ff 53 00 00 ff ff ff 00 00 ff ff ff ff 48 ff ff ff 53 ff 48 ff ff ff 00 48 ff ff 48 48 00 00 00 00 ff 00 ff ff 48 00 00 ff 53 48 00 00 00 00 00 00 ff ff ff 00 00 ff ff 48 ff 48 53 ff ff ff ff 00 00 00 48 00 00 ff 48 ff ff 48 00 00 ff ff 53 48 00 ff ff 48 00 00 00 00 00 53 ff 00 ff 48 53 ff ff 00 00 00 00 ff ff ff 53 00 00 00 00 ff ff ff ff 00 00 53 ff ff ff 00 00 ff 00 00 00 00 48 00 00 00 ff 00 48 00 ff ff ff ff ff ff ff 00 ff 00 ff 48 ff 53 00 ff 00 ff ff 00 00 ff 53 00 ff ff 00 00 00 48 00 00 00 00 00 ff 00 53 ff 48 00 ff ff ff ff 00 00 48 00 00 00 00 00 ff 53 00 ff ff ff 48 ff 00 00 ff ff ff 00 00 00 00 00 00 48 48 00 00 00 00 00 48 53 ff ff 48 ff 00 00 48 00 48 00 00 00 00 ff 00 ff 53 00 00 00 00 00 00 00 ff 00 00 ff 53 ff ff ff ff ff ff 00 00 00 00 00 00 00 00 53 00 00 ff ff 53 ff ff ff 00 48 48 ff ff 48 00 ff ff ff ff 00 00 00 00 ff ff ff 00 48 00 00 ff ff
*/
