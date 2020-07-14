.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x44dd, %rsi
nop
nop
nop
xor %r11, %r11
movw $0x6162, (%rsi)
nop
and %rdi, %rdi
lea addresses_normal_ht+0xc885, %rbp
clflush (%rbp)
nop
nop
and $61521, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x471d, %rdx
nop
cmp %rsi, %rsi
mov (%rdx), %r13d
add %rsi, %rsi
lea addresses_D_ht+0x225d, %rbp
nop
nop
nop
nop
and %rcx, %rcx
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
sub $54508, %rdx
lea addresses_WT_ht+0x1015d, %rdi
nop
nop
and $59219, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rdi)
nop
nop
xor $12370, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rbx

// Store
lea addresses_D+0x15a5d, %r8
clflush (%r8)
nop
dec %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
nop
nop
nop
nop
add $44753, %rbp

// Store
lea addresses_US+0x1495d, %rbx
nop
inc %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
xor $45903, %r11

// Store
lea addresses_A+0x16609, %rax
nop
nop
nop
nop
sub %r8, %r8
movl $0x51525354, (%rax)
nop
nop
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_WT+0x15d, %r11
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%r11), %ax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
