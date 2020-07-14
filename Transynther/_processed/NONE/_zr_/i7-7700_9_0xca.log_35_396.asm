.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x729e, %rsi
lea addresses_UC_ht+0xde36, %rdi
nop
nop
nop
nop
nop
and $46192, %rbx
mov $10, %rcx
rep movsl
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1e46, %rsi
lea addresses_A_ht+0x8a3a, %rdi
inc %r8
mov $62, %rcx
rep movsb
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbx
push %rdi
push %rdx

// Store
mov $0xe9e, %r9
nop
cmp $28104, %r10
movb $0x51, (%r9)
inc %r10

// Store
lea addresses_US+0xc539, %rdx
nop
nop
nop
nop
and %r9, %r9
movl $0x51525354, (%rdx)
nop
nop
xor $46203, %r11

// Store
lea addresses_A+0x889e, %rbx
cmp %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovaps %ymm3, (%rbx)
nop
nop
nop
cmp $12428, %r10

// Faulty Load
lea addresses_A+0xb69e, %rbx
clflush (%rbx)
nop
nop
nop
nop
add $60032, %rdi
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'00': 35}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
