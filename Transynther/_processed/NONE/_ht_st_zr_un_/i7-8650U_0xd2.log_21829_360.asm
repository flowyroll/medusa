.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1a28c, %rsi
nop
nop
nop
nop
nop
add $22340, %r14
mov (%rsi), %rbp
nop
nop
nop
nop
xor $47935, %rdx
lea addresses_UC_ht+0x178ec, %rsi
lea addresses_D_ht+0x1b552, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %rdx
mov $56, %rcx
rep movsb
nop
nop
nop
nop
cmp $17019, %rdi
lea addresses_D_ht+0x1ed0c, %rsi
add %r12, %r12
movb (%rsi), %dl
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x9f45, %r14
nop
nop
and $39538, %rsi
mov (%r14), %ecx
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x7de2, %rbp
nop
nop
nop
nop
cmp $38514, %rdx
movl $0x61626364, (%rbp)
nop
add %rdi, %rdi
lea addresses_WC_ht+0x15c5c, %rdx
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x80cc, %rcx
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x1458c, %rsi
lea addresses_UC_ht+0x139ec, %rdi
nop
nop
nop
nop
and $21729, %r10
mov $54, %rcx
rep movsb
nop
nop
and $51892, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdx

// Load
lea addresses_D+0x1efa0, %r12
nop
nop
nop
inc %rcx
mov (%r12), %r14
nop
nop
nop
and $7953, %r12

// Load
lea addresses_WT+0x26ec, %rdx
xor %r14, %r14
movb (%rdx), %r13b
nop
xor %r12, %r12

// Faulty Load
lea addresses_UC+0x1deec, %rbx
nop
nop
nop
nop
cmp $64514, %r12
vmovups (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'00': 1268, '36': 20492, '47': 6, '48': 58, '30': 4, '04': 1}
00 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 47 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 00 36 36 36 36 00 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 00 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 00 36 36 36 36 36 36 00 36 36 36 00 36 00 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 00 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 00 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 48 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36
*/
