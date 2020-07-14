.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7e3, %rsi
lea addresses_normal_ht+0x11243, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $70, %rcx
rep movsq
nop
xor $55437, %rbx
lea addresses_normal_ht+0xf733, %rsi
lea addresses_normal_ht+0x15de3, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $60, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x18de3, %rsi
lea addresses_WC_ht+0x1c9e3, %rdi
clflush (%rdi)
nop
add $25676, %rbp
mov $110, %rcx
rep movsl
nop
nop
nop
sub $8230, %rdi
lea addresses_UC_ht+0x15783, %rcx
nop
nop
nop
nop
nop
cmp $55931, %rbp
mov (%rcx), %r15w
nop
nop
dec %r15
lea addresses_UC_ht+0x32fb, %r15
sub $9579, %rcx
movb $0x61, (%r15)
nop
nop
inc %rcx
lea addresses_D_ht+0x65e3, %rdi
nop
sub %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
inc %r14
lea addresses_D_ht+0x55e3, %r14
nop
nop
nop
nop
sub $17432, %rsi
mov (%r14), %rbp
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x1bf88, %rsi
lea addresses_UC_ht+0x89e3, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $18, %rcx
rep movsw
xor %rdi, %rdi
lea addresses_WT_ht+0xae0a, %rbx
nop
nop
nop
nop
nop
and $22806, %r15
movb $0x61, (%rbx)
nop
xor %r15, %r15
lea addresses_A_ht+0x163b, %r15
clflush (%r15)
nop
nop
nop
and $41478, %rbx
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm5
vpextrq $0, %xmm5, %rdi
nop
dec %r15
lea addresses_WT_ht+0x9e13, %rsi
lea addresses_UC_ht+0x15be3, %rdi
clflush (%rsi)
nop
nop
nop
and $55681, %rbp
mov $68, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x179e3, %rcx
add $48579, %rbp
movb (%rcx), %r15b
nop
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rdi
push %rsi

// Store
lea addresses_WC+0xa3d3, %rsi
nop
nop
nop
nop
nop
dec %r8
movl $0x51525354, (%rsi)
nop
nop
nop
and $43793, %r13

// Store
mov $0x4e3, %rdi
nop
cmp %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
and %r8, %r8

// Load
mov $0x5720ec00000001e3, %rdi
nop
nop
nop
and %r12, %r12
mov (%rdi), %r10w
nop
nop
nop
nop
nop
and $16774, %r11

// Faulty Load
lea addresses_A+0x1e1e3, %rsi
nop
nop
nop
nop
and %rdi, %rdi
movntdqa (%rsi), %xmm1
vpextrq $1, %xmm1, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdi
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'44': 1172, '45': 510, '49': 2308, '00': 17839}
00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 49 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 49 44 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 49 49 44 00 00 45 00 44 00 00 00 49 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 44 00 00 45 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 44 00 00 45 49 00 00 00 00 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 44 00 00 00 00 00 00 00 00 45 49 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 49 00 00 00 00 00 44 00 00 45 49 00 00 00 49 49 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 45 49 44 00 00 00 00 00 00 00 00 00 44 00 00 00 49 49 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 44 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 49 00 00 00 45 49 44 00 00 00 00 00 00 00 49 49 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 49 00 00 00 00 00 00 00 49 49 44 00 00 49 49 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 49 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 45 49 00 00 00 00 00 00 00 00 45 49 44 00 00 00 00 00 00 00 00 45 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 44 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 44 00 00 00 00 44 00 00 45 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 45 49 44 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 45 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 44 00 00 00 49 49 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 44 00 00 00 00 00 00 00 00 00 00 00 00
*/
