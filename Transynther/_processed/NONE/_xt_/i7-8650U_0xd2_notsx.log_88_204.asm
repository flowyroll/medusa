.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1deea, %rsi
lea addresses_UC_ht+0x609c, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $124, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $64696, %rbx
lea addresses_A_ht+0x2eea, %r14
nop
add $49011, %r12
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
xor $19393, %rsi
lea addresses_WC_ht+0xe516, %r15
nop
nop
inc %rbx
movl $0x61626364, (%r15)
xor $13836, %r12
lea addresses_WT_ht+0xe6aa, %rcx
nop
nop
cmp %r12, %r12
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x104ea, %rsi
lea addresses_WT_ht+0x120ea, %rdi
nop
nop
nop
nop
nop
add $62297, %rbx
mov $61, %rcx
rep movsq
add $52616, %rbx
lea addresses_UC_ht+0xba6a, %rsi
lea addresses_WC_ht+0xcc6a, %rdi
clflush (%rsi)
add $31606, %r10
mov $91, %rcx
rep movsl
nop
cmp $34409, %rsi
lea addresses_A_ht+0x15cea, %r12
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r12)
nop
cmp $36219, %rsi
lea addresses_UC_ht+0x1722a, %rbx
and $9696, %rdi
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x1122a, %rdi
nop
nop
nop
xor %rbx, %rbx
mov (%rdi), %r15w
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x11cd2, %r14
cmp %r10, %r10
mov (%r14), %cx
nop
nop
nop
nop
and $25634, %rbx
lea addresses_D_ht+0x1b8ea, %rsi
nop
nop
nop
add %rdi, %rdi
mov (%rsi), %r15w
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x4502, %rcx
nop
nop
nop
nop
and $20758, %r14
movb (%rcx), %r10b
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x6c3c, %r12
nop
nop
nop
nop
sub $41566, %rsi
mov (%r12), %r15w
and %r14, %r14
lea addresses_A_ht+0x2b52, %rbx
nop
nop
nop
and $58472, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm6
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm6, (%rbx)
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rbx

// Store
mov $0xaea, %rbx
nop
and $56019, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
inc %r15

// Faulty Load
lea addresses_D+0x3cea, %rbp
nop
nop
nop
nop
nop
and $39350, %r11
vmovups (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'36': 88}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
