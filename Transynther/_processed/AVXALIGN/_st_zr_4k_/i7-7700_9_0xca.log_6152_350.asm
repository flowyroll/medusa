.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x16bc3, %rbx
nop
nop
nop
nop
nop
and %rdi, %rdi
movb (%rbx), %r11b
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x199d3, %r9
nop
nop
nop
nop
add $32655, %r13
movw $0x6162, (%r9)
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x101d3, %rbx
nop
nop
nop
nop
nop
xor $678, %r12
movl $0x61626364, (%rbx)
add %rbx, %rbx
lea addresses_normal_ht+0x2233, %rsi
lea addresses_A_ht+0x1db63, %rdi
inc %rbp
mov $45, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $23506, %rsi
lea addresses_UC_ht+0x95b3, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r11, %r11
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
cmp $19189, %rbx
lea addresses_WC_ht+0x109b3, %rsi
lea addresses_D_ht+0xe1d3, %rdi
cmp $32886, %r13
mov $93, %rcx
rep movsw
nop
nop
nop
and $49459, %rbp
lea addresses_D_ht+0xbb3b, %rsi
lea addresses_WT_ht+0x7b53, %rdi
nop
nop
nop
nop
cmp $61205, %r11
mov $63, %rcx
rep movsl
nop
nop
nop
xor $12448, %rbx
lea addresses_D_ht+0x179d3, %rdi
nop
nop
nop
add $45002, %r12
mov (%rdi), %r13d
nop
nop
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x5733, %rsi
lea addresses_PSE+0x45f3, %rdi
nop
nop
nop
sub $35742, %r13
mov $109, %rcx
rep movsl
nop
nop
nop
nop
nop
add $61972, %r15

// Store
lea addresses_WT+0xf1d3, %rbx
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%rbx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r15
nop
nop
add $64696, %rdi

// Store
lea addresses_WT+0x2cd3, %rbx
nop
inc %r15
movb $0x51, (%rbx)
xor $23624, %rdi

// Store
lea addresses_RW+0x172ea, %rcx
nop
nop
nop
nop
nop
cmp $38999, %r8
movl $0x51525354, (%rcx)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_normal+0x5a3, %rcx
nop
and $46662, %r8
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_A+0x61d3, %r13
nop
nop
inc %rsi
movntdqa (%r13), %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 2638, '58': 3514}
00 00 58 58 58 00 58 00 58 58 58 00 00 58 00 00 58 00 58 00 58 00 00 00 58 00 00 58 58 00 58 58 00 00 58 00 58 00 58 00 00 58 00 58 58 58 00 00 00 00 58 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 58 00 00 00 00 58 00 58 58 00 58 58 00 00 58 00 00 00 58 00 00 58 00 00 00 58 58 00 58 58 00 58 58 58 58 00 58 00 00 58 58 58 58 00 00 58 58 58 00 58 58 58 58 00 58 58 00 00 00 58 58 58 58 58 00 58 00 00 58 58 00 58 58 00 58 58 58 58 00 58 58 58 00 00 00 00 58 00 58 00 00 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 00 00 00 00 58 58 58 00 58 00 00 58 58 00 00 58 00 00 00 00 58 00 00 58 58 58 00 58 58 00 58 58 00 58 58 58 00 58 00 58 58 58 58 58 00 00 58 58 00 00 58 00 58 00 58 00 58 00 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 58 58 00 00 00 00 00 00 58 00 58 00 58 00 58 00 58 00 00 00 58 00 58 58 00 00 00 58 58 58 58 00 00 00 58 58 00 58 58 58 00 00 00 00 58 58 58 58 00 58 00 00 58 58 00 00 00 58 00 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 00 58 00 00 58 00 58 00 58 58 58 58 58 00 58 58 00 00 58 00 00 00 00 58 58 00 00 58 00 58 58 00 58 58 00 58 00 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 00 58 00 00 00 00 58 58 00 58 00 00 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 00 58 58 58 00 58 58 00 58 00 00 58 00 00 00 58 00 58 58 00 00 58 00 00 00 58 58 00 00 58 00 00 58 00 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 00 00 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 00 00 58 00 58 00 58 00 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 00 58 00 58 00 00 00 00 00 58 58 58 00 00 58 00 58 58 58 00 00 58 58 00 58 58 58 00 58 58 58 00 00 00 00 58 00 58 58 58 58 00 58 00 00 58 00 00 00 58 58 00 58 58 58 00 00 00 00 58 00 58 00 58 58 00 58 00 58 00 58 58 00 58 58 58 58 58 00 00 58 58 00 00 00 58 58 58 00 58 58 00 00 58 58 58 00 00 58 58 58 58 58 00 58 58 00 58 00 58 58 58 00 58 00 00 58 00 58 00 58 00 00 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 00 00 58 00 58 58 00 00 58 00 58 00 00 00 00 00 58 58 58 00 58 58 00 00 58 58 58 58 00 58 00 00 58 58 00 00 58 00 58 58 00 00 58 58 58 00 58 00 58 58 00 58 00 00 00 58 58 58 58 58 58 00 00 00 58 00 00 00 58 00 00 58 58 58 00 00 00 58 58 58 00 58 58 58 00 00 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 00 58 00 58 58 58 58 58 00 00 00 58 58 58 00 00 58 00 58 58 00 58 58 58 00 58 00 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 00 00 58 58 00 58 58 00 58 00 58 00 00 58 58 00 58 58 58 58 58 00 00 58 00 00 58 58 58 58 58 00 00 00 00 58 00 58 00 58 58 58 00 00 58 00 00 58 00 00 00 58 58 58 58 58 00 00 58 58 58 58 00 00 58 58 00 00 58 00 00 58 58 00 00 00 58 00 58 58 00 58 58 58 58 58 00 58 58 58 00 00 00 00 58 58 58 00 00 58 00 58 00 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 00 00 00 00 58 58 58 00 58 00 00 00 00 00 58 00 00 58 58 58 58 00 58 58 00 00 00 58 00 58 58 00 58 58 58 00 00 58 58 00 58 58 58 58 00 58
*/
