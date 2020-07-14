.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x9f15, %rsi
lea addresses_WT_ht+0x1602d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $30, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $43800, %rbx
lea addresses_normal_ht+0xe77d, %rbp
nop
nop
cmp $3086, %rbx
movb $0x61, (%rbp)
nop
nop
nop
nop
xor $60319, %rbp
lea addresses_normal_ht+0x10415, %rdx
nop
nop
xor %r15, %r15
mov (%rdx), %rdi
nop
nop
nop
nop
cmp $54760, %rcx
lea addresses_WT_ht+0x1b7d5, %rcx
add $14723, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
nop
sub $63485, %rsi
lea addresses_D_ht+0x915, %rbp
inc %rdi
movb (%rbp), %dl
nop
nop
xor $24705, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Store
mov $0x4c48b50000000c15, %r9
nop
xor %r11, %r11
movl $0x51525354, (%r9)
nop
nop
nop
inc %rbx

// Load
lea addresses_WT+0x3935, %r11
nop
nop
nop
nop
xor %r8, %r8
mov (%r11), %r9w
dec %r8

// Store
lea addresses_D+0x19355, %r9
clflush (%r9)
nop
nop
nop
and $3385, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
nop
dec %rsi

// Faulty Load
mov $0x4c48b50000000c15, %rbx
nop
xor %rbp, %rbp
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'54': 29}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
