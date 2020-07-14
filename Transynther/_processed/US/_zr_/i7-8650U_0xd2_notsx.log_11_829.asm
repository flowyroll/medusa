.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x17d35, %r9
nop
nop
nop
nop
and $44891, %rsi
movb $0x61, (%r9)
nop
dec %rsi
lea addresses_WC_ht+0xea5, %rcx
dec %r15
mov (%rcx), %rbx
add %r15, %r15
lea addresses_WC_ht+0x112a5, %rsi
lea addresses_UC_ht+0x2a5, %rdi
nop
nop
nop
add $4444, %r10
mov $64, %rcx
rep movsw
nop
nop
nop
nop
xor $38707, %rsi
lea addresses_normal_ht+0x1325, %rsi
lea addresses_normal_ht+0x1bd25, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $10024, %r13
mov $92, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x15ca5, %r9
nop
nop
nop
and $3602, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r9)
nop
nop
and $18589, %rbx
lea addresses_D_ht+0x15da5, %r13
nop
nop
nop
add $16113, %r10
mov (%r13), %r9
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x1ac81, %r13
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rbp
push %rbx
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x62a5, %rbp
nop
nop
nop
nop
sub $46923, %r14
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
