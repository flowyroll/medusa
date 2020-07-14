.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x11ff4, %r13
nop
nop
nop
nop
nop
and $50574, %r15
mov (%r13), %r11d
nop
nop
add $15156, %rdx
lea addresses_A_ht+0x10670, %rsi
lea addresses_A_ht+0x150c4, %rdi
inc %r13
mov $24, %rcx
rep movsw
and $3898, %r13
lea addresses_WT_ht+0x147f4, %r15
nop
nop
nop
nop
nop
cmp $14258, %rsi
movl $0x61626364, (%r15)
nop
cmp %r15, %r15
lea addresses_WT_ht+0x3457, %rsi
nop
nop
xor $4764, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rsi)
add %rdi, %rdi
lea addresses_WC_ht+0x18964, %rsi
lea addresses_A_ht+0xd7f4, %rdi
nop
nop
nop
nop
nop
and $26675, %r10
mov $110, %rcx
rep movsw
sub $47319, %r15
lea addresses_UC_ht+0x1173e, %rdx
nop
mfence
mov $0x6162636465666768, %r15
movq %r15, (%rdx)
add %r10, %r10
lea addresses_D_ht+0xa7b4, %rsi
lea addresses_D_ht+0x10cb4, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $13, %rcx
rep movsw
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x16e34, %rsi
cmp $47976, %rcx
movb $0x61, (%rsi)
nop
nop
nop
nop
and $55971, %rsi
lea addresses_normal_ht+0x1ba4a, %rdx
nop
nop
nop
nop
inc %r10
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x7df4, %rsi
lea addresses_D_ht+0xdb74, %rdi
nop
nop
nop
inc %r13
mov $59, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0xcd74, %rsi
nop
nop
nop
nop
and $7554, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x1a81b, %rcx
nop
nop
xor $3028, %r10
mov (%rcx), %r13d
nop
nop
nop
nop
xor $34414, %r11
lea addresses_A_ht+0x1d5f4, %rsi
lea addresses_D_ht+0xa154, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $62, %rcx
rep movsb
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbp

// Faulty Load
lea addresses_PSE+0x1dff4, %r13
nop
add %r9, %r9
mov (%r13), %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
