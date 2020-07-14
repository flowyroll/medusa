.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x17d95, %r12
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, (%r12)
dec %r11
lea addresses_WC_ht+0x3595, %r11
nop
nop
nop
nop
cmp $20286, %rcx
movb (%r11), %r10b
add %rcx, %rcx
lea addresses_WT_ht+0x10695, %r13
nop
nop
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x5595, %rsi
lea addresses_UC_ht+0x18b95, %rdi
clflush (%rdi)
nop
nop
nop
sub $15447, %r10
mov $10, %rcx
rep movsw
nop
nop
nop
nop
sub $54504, %rsi
lea addresses_UC_ht+0x4d55, %rdi
clflush (%rdi)
nop
sub $9704, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
sub $50846, %rdi
lea addresses_WC_ht+0x16ed1, %rdi
nop
nop
nop
and %r15, %r15
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Store
mov $0x395, %rsi
nop
cmp $10215, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rsi)
add $32117, %r12

// Store
mov $0x126b880000000d95, %r8
dec %r10
movb $0x51, (%r8)
nop
nop
cmp $21419, %rbp

// Store
lea addresses_A+0xaa15, %rbx
nop
xor $26961, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
and $31209, %rdi

// Faulty Load
mov $0x126b880000000d95, %r12
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r12), %r8w
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'01': 1, '00': 2596, '51': 18252, '6d': 979, '18': 1}
51 51 51 00 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 00 51 51 6d 51 00 51 51 51 51 6d 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 6d 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 6d 51 51 00 51 00 51 00 51 51 00 51 51 51 51 00 51 51 6d 00 51 51 51 51 51 51 51 51 00 51 51 00 51 00 51 51 00 51 51 51 00 51 00 51 51 6d 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 6d 51 51 51 51 51 51 51 00 51 51 51 51 00 6d 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 6d 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 6d 00 51 51 00 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 6d 51 51 51 51 6d 51 51 51 51 00 51 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 6d 51 51 51 51 51 51 51 00 51 00 51 51 6d 51 51 51 51 51 51 00 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 6d 6d 51 51 51 00 51 6d 51 51 51 6d 51 51 00 6d 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 6d 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 6d 51 00 51 51 51 51 51 51 51 51 00 00 6d 51 00 6d 51 51 51 00 51 00 00 00 51 51 51 51 51 51 51 51 00 51 51 00 51 51 6d 51 51 51 00 51 51 51 00 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 00 51 6d 00 51 51 51 51 51 51 51 51 00 51 51 6d 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 6d 51 6d 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 6d 51 6d 51 00 51 51 6d 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 6d 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 00 51 00 51 51 00 51 51 51 51 51 51 00 00 51 00 51 51 51 51 51 6d 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 00 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 6d 51 51 51 51 51 51 51 00 51 00 6d 51 51 51 51 00 51 6d 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 6d 51 6d 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
