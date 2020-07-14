.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15239, %rbx
nop
nop
add $33302, %r14
movb (%rbx), %r13b
and %r8, %r8
lea addresses_normal_ht+0xc239, %r14
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%r14)
nop
nop
and $6303, %r8
lea addresses_UC_ht+0x1a439, %rbx
nop
nop
nop
nop
and %rdx, %rdx
mov (%rbx), %r14w
nop
nop
nop
cmp $27917, %r14
lea addresses_A_ht+0xae1d, %rdx
clflush (%rdx)
nop
nop
add %rsi, %rsi
mov (%rdx), %rdi
add %r14, %r14
lea addresses_normal_ht+0x1d479, %rsi
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
inc %rdi
lea addresses_WT_ht+0x5c39, %rsi
lea addresses_A_ht+0xa39, %rdi
nop
add $38363, %r8
mov $117, %rcx
rep movsq
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x18239, %rsi
nop
nop
nop
add $6073, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x16bf9, %rsi
lea addresses_WT_ht+0x14a39, %rdi
nop
nop
xor $57391, %r14
mov $38, %rcx
rep movsl
nop
sub %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rdi

// Store
lea addresses_normal+0x13239, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %rax
movq %rax, (%rbx)
nop
nop
nop
sub $49861, %rbx

// Store
lea addresses_normal+0xa639, %r13
inc %r11
movb $0x51, (%r13)
nop
nop
nop
add $35971, %r13

// Store
lea addresses_D+0x192c9, %r11
clflush (%r11)
and %r13, %r13
movw $0x5152, (%r11)
nop
nop
and $61060, %r15

// Load
lea addresses_normal+0x13239, %r15
nop
nop
nop
nop
nop
dec %rbx
vmovaps (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
add $62502, %r11

// Faulty Load
lea addresses_normal+0x13239, %rdi
nop
nop
nop
nop
sub $47465, %rbx
mov (%rdi), %r14d
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
