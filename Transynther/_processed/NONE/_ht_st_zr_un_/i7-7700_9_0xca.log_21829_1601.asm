.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x546, %rsi
lea addresses_D_ht+0x1c4a6, %rdi
nop
nop
nop
nop
nop
sub $18997, %r10
mov $82, %rcx
rep movsl
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0xb31e, %r15
nop
nop
nop
nop
nop
sub $13410, %rbp
movb (%r15), %r10b
sub %r15, %r15
lea addresses_UC_ht+0x89f6, %r10
clflush (%r10)
nop
nop
nop
nop
and $11693, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r10)
and $63972, %rsi
lea addresses_A_ht+0x13c76, %rsi
lea addresses_WC_ht+0x7976, %rdi
xor %rbp, %rbp
mov $20, %rcx
rep movsl
nop
nop
nop
nop
xor $14737, %rdi
lea addresses_D_ht+0x7876, %rcx
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
cmp $51371, %r15
lea addresses_WT_ht+0x12c46, %r15
nop
sub %r10, %r10
movb (%r15), %cl
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x9076, %rcx
nop
nop
nop
cmp %r10, %r10
mov (%rcx), %r15d
nop
nop
sub $46550, %r15
lea addresses_A_ht+0x13bf6, %rcx
nop
xor %r9, %r9
movl $0x61626364, (%rcx)
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x2076, %rdi
xor %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
and $11431, %rsi
lea addresses_normal_ht+0x3336, %r9
nop
nop
dec %rcx
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
add $20800, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbp
push %rcx
push %rdx

// Store
lea addresses_D+0xba8a, %rdx
clflush (%rdx)
nop
nop
nop
sub $26660, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
sub %rbp, %rbp

// Store
lea addresses_normal+0x6e76, %r13
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r13)
nop
inc %r13

// Faulty Load
lea addresses_WC+0xb876, %rdx
nop
nop
nop
nop
nop
xor %r15, %r15
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'44': 3634, '46': 1237, 'b3': 51, '45': 1423, '53': 2806, '3c': 245, '49': 1400, 'de': 264, '80': 534, 'ff': 9384, '00': 347, '10': 11, '50': 69, 'e0': 424}
45 ff ff 44 ff 45 44 44 44 45 e0 53 49 45 44 44 ff ff ff 44 53 ff 44 ff e0 46 46 53 44 00 ff ff ff 44 ff ff 44 49 ff ff ff 00 ff ff ff 53 ff ff 46 ff ff 46 ff 46 ff 45 ff 44 44 44 49 ff 49 ff ff ff 44 ff 44 45 44 ff 44 53 ff 44 45 53 53 53 ff 44 ff 53 53 ff ff 44 44 49 53 44 de ff ff ff 49 ff ff 46 44 53 53 ff 49 ff ff ff ff 80 ff 53 ff ff 46 44 53 45 44 44 53 ff 44 53 e0 53 00 46 53 ff ff 45 ff ff 80 44 ff 45 ff ff de 45 44 ff 44 ff 46 00 46 de ff ff 45 ff ff 44 53 44 ff 44 10 44 ff ff ff 46 53 ff ff 44 ff 44 80 44 ff 44 44 53 ff 44 44 46 44 de 45 de 44 00 ff 50 ff ff ff ff ff ff 49 45 ff ff 44 ff 53 53 ff 44 53 ff ff 44 44 53 e0 ff 44 ff ff ff 49 3c 44 46 ff ff 53 49 53 44 44 44 45 ff ff ff ff 44 ff de ff ff 49 46 ff ff 49 ff 49 46 53 ff ff ff 49 ff ff ff ff ff e0 ff ff ff ff ff 45 ff 49 ff 49 53 44 ff 44 44 49 46 ff ff ff 49 46 44 49 ff ff ff 44 ff ff ff 53 45 ff ff ff 49 44 ff ff ff ff 80 3c ff 53 44 ff e0 ff e0 44 45 45 44 ff ff ff ff ff 45 49 44 b3 53 de 53 45 53 53 49 ff ff de ff ff ff ff ff 45 46 44 ff 45 ff ff 45 44 ff ff ff ff 44 ff 49 e0 ff 45 53 44 ff ff 49 49 ff 44 ff ff ff ff 49 ff ff ff 44 53 49 80 53 ff 46 44 ff 45 ff ff 49 44 45 44 44 ff ff ff 53 53 53 ff 45 53 53 ff ff 44 44 44 ff ff 45 49 53 ff 44 53 44 45 ff ff 44 44 45 44 53 ff ff ff ff ff ff ff ff ff 44 ff ff ff ff ff ff 46 44 49 ff ff ff de 44 ff ff ff ff 80 ff ff ff 46 53 44 e0 ff 46 45 ff 46 53 44 44 53 ff ff 44 ff 53 49 44 ff 45 ff ff 45 46 53 ff 80 ff ff ff 49 46 53 ff 53 ff 44 ff ff 45 45 ff 53 ff ff ff 44 44 44 ff ff 53 53 ff ff ff 80 44 ff 45 ff 53 49 ff 45 ff ff 53 53 ff 53 49 ff ff ff 53 50 ff ff ff 46 ff 44 ff 49 53 ff 45 ff ff 44 ff 44 44 ff ff de ff ff 44 44 45 ff ff ff ff 00 ff ff 45 ff e0 ff 45 53 ff 44 ff 00 de 45 46 44 ff 44 49 44 44 44 ff ff 53 53 ff e0 ff 44 53 ff 44 44 44 53 53 45 46 44 44 46 ff ff ff ff 49 ff 44 e0 53 45 ff ff ff ff 80 53 49 53 53 ff ff ff 46 53 80 44 ff 00 53 44 53 53 44 49 53 44 00 44 80 ff ff 46 44 80 80 53 ff ff 00 ff ff ff ff 80 ff 00 ff 53 ff 44 ff 44 ff e0 44 ff 53 49 49 ff 44 80 44 45 53 44 49 53 46 ff 49 44 45 53 ff ff 44 ff 49 ff ff 46 de ff 44 49 ff 44 45 45 ff ff ff ff 3c ff 44 44 ff 53 45 44 53 45 53 ff ff 53 45 de ff ff ff 53 ff ff ff 49 45 44 44 44 ff 80 53 ff ff ff ff 53 53 ff 49 ff 46 ff ff 49 49 53 ff ff ff 45 46 45 49 ff 44 ff 45 ff ff ff 44 44 ff ff ff 44 ff 44 ff ff 44 53 44 ff 44 ff ff ff 44 ff ff 80 ff ff ff ff ff 46 00 ff ff 53 ff 44 ff 44 44 44 ff ff ff ff ff 49 ff 44 80 ff 44 ff 45 ff ff 49 45 46 44 44 ff 44 ff 45 ff ff ff ff 50 ff 44 ff 53 44 ff 49 ff 44 53 53 00 53 ff ff ff ff ff 53 ff 53 ff ff ff ff 53 ff ff 44 45 45 80 53 53 ff 44 ff ff 44 44 ff ff ff 44 ff ff ff 53 44 49 ff 53 ff 44 ff 49 44 53 ff 46 44 44 ff 53 ff 44 e0 ff 53 45 ff ff ff 44 ff ff ff ff 45 ff ff 44 44 ff ff ff e0 53 45 ff 49 45 ff 49 b3 44 45 49 45 50 53 ff 44 44 53 45 ff ff ff 53 53 44 44 ff 44 ff 44 80 ff 53 49 49 ff 46 53 ff e0 44 45 44 ff ff 44 53 44 53 44 44 ff 49 44 53 46 49 ff ff ff 44 ff ff de 46 ff ff ff 44 ff ff ff 44 00 49 ff 45
*/
