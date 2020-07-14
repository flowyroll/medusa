.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc39f, %rsi
lea addresses_WT_ht+0x559f, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $72, %rcx
rep movsq
nop
dec %rdx
lea addresses_WT_ht+0x173df, %r15
nop
nop
and $24696, %rbp
mov (%r15), %r10w
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0xf160, %rsi
lea addresses_normal_ht+0x346f, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $44, %rcx
rep movsw
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x2cc1, %rdi
and $23855, %rbp
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
add %rbp, %rbp
lea addresses_WT_ht+0x1039f, %r10
nop
nop
add $6841, %rbp
movb $0x61, (%r10)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0xdf9f, %rcx
nop
and $37359, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x1249f, %r15
add $48714, %rsi
movb $0x61, (%r15)
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0xaf27, %rdi
nop
xor $38610, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
add $53017, %r10
lea addresses_UC_ht+0x265f, %rsi
lea addresses_A_ht+0x1a0a3, %rdi
nop
inc %rbp
mov $33, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $18334, %r10
lea addresses_WT_ht+0xffa8, %rbp
nop
nop
nop
nop
add %r10, %r10
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x903f, %rbp
clflush (%rbp)
nop
nop
xor %rsi, %rsi
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %rbx
cmp %r10, %r10
lea addresses_UC_ht+0xb59f, %rdx
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, (%rdx)
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x229f, %r15
nop
nop
nop
xor $22331, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r15)
nop
and %rbx, %rbx
lea addresses_normal_ht+0x1e76f, %rbx
nop
nop
nop
and $34724, %rsi
movups (%rbx), %xmm2
vpextrq $0, %xmm2, %r15
nop
dec %rcx
lea addresses_UC_ht+0x1439f, %rbx
nop
nop
nop
nop
nop
cmp $63631, %rbp
mov (%rbx), %di
nop
nop
and $46479, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rsi

// Load
lea addresses_US+0x11f9f, %r12
and %rsi, %rsi
mov (%r12), %rcx
nop
nop
nop
nop
nop
and $60317, %r12

// Store
lea addresses_A+0x10f9f, %rbp
clflush (%rbp)
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovaps %ymm6, (%rbp)
nop
nop
nop
cmp %r12, %r12

// Store
mov $0x4e77280000000b9f, %r15
nop
nop
nop
nop
sub $25665, %r11
movb $0x51, (%r15)
nop
cmp %rsi, %rsi

// Store
lea addresses_A+0x1ac7c, %rbx
nop
nop
nop
sub %r15, %r15
movb $0x51, (%rbx)
nop
nop
inc %r15

// Faulty Load
mov $0x4e77280000000b9f, %rcx
nop
nop
inc %rbx
mov (%rcx), %r11d
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'51': 21427, '00': 397, '50': 5}
51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51
*/
