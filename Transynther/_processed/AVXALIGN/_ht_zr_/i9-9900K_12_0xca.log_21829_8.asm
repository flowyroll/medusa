.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x301b, %r13
nop
nop
xor %rdx, %rdx
mov (%r13), %rcx
nop
cmp $17576, %rdi
lea addresses_WC_ht+0xcf0f, %rsi
lea addresses_UC_ht+0x1e70f, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $14921, %r8
mov $18, %rcx
rep movsq
cmp $30289, %rcx
lea addresses_WC_ht+0xc08f, %r8
nop
and $14510, %r15
movups (%r8), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
sub $25372, %r15
lea addresses_A_ht+0x1b187, %rdx
nop
nop
nop
nop
dec %r13
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
add $250, %rdi
lea addresses_normal_ht+0x1618f, %r15
nop
cmp $36367, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x8f0f, %rsi
lea addresses_UC_ht+0x10ecf, %rdi
nop
nop
nop
nop
inc %r14
mov $57, %rcx
rep movsw
nop
nop
nop
dec %r14
lea addresses_WT_ht+0x1563f, %rsi
lea addresses_A_ht+0x140f, %rdi
sub %r8, %r8
mov $3, %rcx
rep movsw
nop
nop
nop
nop
cmp $2337, %r15
lea addresses_UC_ht+0xd3bb, %rcx
dec %r15
mov (%rcx), %r14
add %rcx, %rcx
lea addresses_UC_ht+0x1bcd3, %r15
nop
sub %rsi, %rsi
movl $0x61626364, (%r15)
nop
nop
dec %r14
lea addresses_UC_ht+0x9c0f, %rsi
add $12481, %r15
movb (%rsi), %r8b
and $34809, %rdi
lea addresses_UC_ht+0x4d5f, %rdx
add $63388, %rsi
movl $0x61626364, (%rdx)
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rdx
push %rsi

// Faulty Load
lea addresses_normal+0x1f70f, %r11
nop
nop
nop
nop
nop
add $4609, %r10
movaps (%r11), %xmm7
vpextrq $1, %xmm7, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'45': 3762, '00': 18067}
45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 45 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00
*/
