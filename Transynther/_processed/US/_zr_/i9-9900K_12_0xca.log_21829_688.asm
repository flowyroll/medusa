.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb9e1, %r12
nop
nop
dec %rbp
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x11c19, %r14
nop
cmp %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %r14
movaps %xmm0, (%r14)
nop
nop
nop
nop
nop
sub $19381, %r8
lea addresses_WC_ht+0xd479, %r9
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x1e6b1, %rsi
lea addresses_D_ht+0x9f1, %rdi
nop
sub %rbx, %rbx
mov $88, %rcx
rep movsw
nop
nop
cmp $59690, %rdi
lea addresses_normal_ht+0x6d29, %rcx
nop
nop
xor $56089, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
cmp $39173, %rsi
lea addresses_UC_ht+0x19b91, %r9
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x1ee91, %rsi
lea addresses_A_ht+0x16371, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $47, %rcx
rep movsb
nop
nop
dec %rbp
lea addresses_D_ht+0x18f41, %rsi
lea addresses_UC_ht+0x4b91, %rdi
nop
sub %rbp, %rbp
mov $17, %rcx
rep movsl
and $22324, %r12
lea addresses_normal_ht+0x2871, %rsi
lea addresses_A_ht+0x134b1, %rdi
clflush (%rdi)
nop
and $53043, %r8
mov $42, %rcx
rep movsb
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x6e29, %rsi
lea addresses_normal_ht+0x17a71, %rdi
nop
nop
and %r14, %r14
mov $53, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x1ca7a, %rsi
lea addresses_D_ht+0xf7f1, %rdi
nop
nop
nop
sub $33202, %rbp
mov $34, %rcx
rep movsw
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0xbb71, %r9
nop
nop
nop
xor %rbp, %rbp
movb (%r9), %bl
nop
nop
nop
nop
nop
sub $20766, %r8
lea addresses_A_ht+0x13271, %r14
nop
nop
and $60706, %rsi
movb (%r14), %cl
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x8771, %rsi
nop
nop
dec %rcx
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %r14
nop
cmp $49385, %rcx
lea addresses_normal_ht+0x52a1, %rbx
nop
nop
xor $57433, %r12
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WC+0x15839, %r9
nop
nop
nop
nop
sub $12151, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movntdq %xmm1, (%r9)
nop
nop
sub %r9, %r9

// Store
lea addresses_D+0x125cf, %r10
nop
xor %r13, %r13
movb $0x51, (%r10)
nop
nop
inc %rbp

// Store
mov $0x6698e50000000671, %rdi
nop
nop
and $56566, %rsi
movl $0x51525354, (%rdi)
sub %rdi, %rdi

// Store
lea addresses_A+0xa171, %rbp
nop
nop
nop
nop
xor $2337, %rsi
movl $0x51525354, (%rbp)
xor %rdi, %rdi

// Store
lea addresses_RW+0x1da71, %r13
nop
nop
nop
sub %rbp, %rbp
movl $0x51525354, (%r13)
nop
nop
nop
dec %rbp

// Faulty Load
lea addresses_US+0x1c271, %r13
nop
nop
add $39848, %r10
movups (%r13), %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
