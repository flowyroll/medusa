.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xeb53, %rsi
lea addresses_normal_ht+0x1616d, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $1, %rcx
rep movsb
dec %r13
lea addresses_WC_ht+0x1b7af, %rsi
nop
nop
nop
and $32843, %r8
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
sub $20897, %r13
lea addresses_normal_ht+0xff9f, %rsi
lea addresses_D_ht+0xf3af, %rdi
nop
nop
nop
add $19294, %r12
mov $114, %rcx
rep movsq
nop
cmp $23880, %r12
lea addresses_D_ht+0x1c1f, %r13
nop
nop
nop
nop
nop
add %r12, %r12
mov (%r13), %r8
nop
nop
nop
nop
sub $20845, %rdi
lea addresses_normal_ht+0x5faf, %rsi
lea addresses_WT_ht+0x17faf, %rdi
clflush (%rsi)
nop
and $34730, %rbx
mov $7, %rcx
rep movsq
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x11d2f, %r12
nop
and %rbx, %rbx
mov (%r12), %r8d
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x1ef2f, %rdi
nop
sub %rbx, %rbx
movl $0x61626364, (%rdi)
nop
nop
inc %rsi
lea addresses_normal_ht+0x8e0b, %rcx
nop
nop
nop
nop
nop
and %r12, %r12
mov (%rcx), %si
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x1400f, %rsi
nop
nop
nop
nop
sub $43006, %rdi
movb $0x61, (%rsi)
nop
nop
nop
inc %r8
lea addresses_D_ht+0x1534f, %rcx
nop
nop
nop
nop
nop
inc %r12
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0xbd2f, %rsi
lea addresses_D_ht+0x1bef, %rdi
nop
nop
nop
xor $65133, %r12
mov $91, %rcx
rep movsq
xor $51370, %rdi
lea addresses_WT_ht+0xb05f, %rsi
lea addresses_D_ht+0x177cf, %rdi
clflush (%rdi)
nop
nop
nop
and %rdx, %rdx
mov $46, %rcx
rep movsb
nop
nop
add $12660, %r13
lea addresses_normal_ht+0xe67, %rbx
dec %rcx
movb (%rbx), %dl
nop
nop
nop
nop
cmp $63774, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0xa0cf, %rcx
dec %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
add %r15, %r15

// Load
lea addresses_UC+0xbbaf, %r9
nop
nop
dec %r11
movups (%r9), %xmm4
vpextrq $1, %xmm4, %rdx
add $9930, %rcx

// Store
lea addresses_A+0xd3af, %rdi
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_D+0x1f5b0, %r13
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r13)

// Exception!!!
nop
mov (0), %rcx
nop
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_A+0xd3af, %rdx
nop
nop
nop
nop
cmp $56714, %r13
mov (%rdx), %di
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'58': 10}
58 58 58 58 58 58 58 58 58 58
*/
