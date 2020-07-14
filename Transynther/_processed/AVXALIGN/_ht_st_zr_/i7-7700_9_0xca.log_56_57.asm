.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xa3da, %rsi
lea addresses_A_ht+0x1037a, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r12
mov $84, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_WT_ht+0x94ea, %rbp
nop
nop
and $12794, %r8
mov $0x6162636465666768, %r9
movq %r9, (%rbp)
nop
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0xcbda, %rsi
lea addresses_normal_ht+0x645a, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $43, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x6a5f, %rcx
nop
nop
nop
nop
and $41852, %rbx
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x14dda, %rdi
nop
nop
sub $25368, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add $48629, %rsi
lea addresses_WC_ht+0x1cbda, %rsi
lea addresses_normal_ht+0x13dda, %rdi
clflush (%rsi)
nop
sub %rbx, %rbx
mov $125, %rcx
rep movsw
nop
sub $16950, %rsi
lea addresses_WT_ht+0x13bda, %rsi
lea addresses_A_ht+0xee1a, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r9, %r9
mov $36, %rcx
rep movsb
inc %rbx
lea addresses_WT_ht+0x15fa6, %rsi
lea addresses_WT_ht+0x557a, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $18, %rcx
rep movsb
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x83da, %rsi
lea addresses_normal+0x1631a, %rdi
inc %r14
mov $45, %rcx
rep movsw
nop
xor $38639, %rsi

// Load
lea addresses_WC+0x1762a, %rbp
nop
nop
nop
nop
inc %r15
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
and $50781, %rsi

// Store
lea addresses_WC+0x85da, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
dec %r15

// Faulty Load
lea addresses_RW+0xb3da, %r11
nop
nop
nop
nop
nop
add $44464, %rbp
movaps (%r11), %xmm5
vpextrq $1, %xmm5, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'46': 1, '36': 47, '00': 8}
00 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 00 36 36 36 46 36 00 36 36 36 36 36 36 36 36 36 36 36 00 36 00 36 36 36 36 36 36 00 00 36 36 36 36
*/
