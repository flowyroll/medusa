.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x196f7, %rsi
nop
nop
sub $30677, %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rsi)
xor %rbx, %rbx
lea addresses_D_ht+0xd1f7, %rax
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
inc %r10
lea addresses_D_ht+0x12797, %rsi
lea addresses_A_ht+0x7af7, %rdi
add %rbp, %rbp
mov $87, %rcx
rep movsl
sub $48829, %rax
lea addresses_UC_ht+0x711f, %rsi
lea addresses_UC_ht+0x865f, %rdi
nop
nop
nop
xor $13307, %rbx
mov $61, %rcx
rep movsw
nop
nop
nop
cmp $32047, %r10
lea addresses_WT_ht+0xca57, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $39958, %r15
mov (%rdi), %rbp
nop
cmp $12983, %rdi
lea addresses_UC_ht+0x142f7, %rsi
lea addresses_WC_ht+0x153f7, %rdi
cmp $53204, %rbp
mov $50, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xc2f7, %r11
xor $31416, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movups %xmm0, (%r11)
nop
sub %r11, %r11

// Store
lea addresses_D+0x1d182, %r15
nop
sub $5684, %r9
mov $0x5152535455565758, %r13
movq %r13, (%r15)
add %r9, %r9

// REPMOV
lea addresses_A+0xb9e7, %rsi
lea addresses_A+0x1e6df, %rdi
nop
nop
nop
nop
sub $45346, %r9
mov $69, %rcx
rep movsb
nop
nop
cmp $59029, %r14

// Store
lea addresses_normal+0x10603, %rbx
nop
nop
nop
nop
nop
mfence
movw $0x5152, (%rbx)
nop
nop
and %r13, %r13

// Store
lea addresses_PSE+0x5c07, %r15
nop
nop
and $2027, %rsi
movb $0x51, (%r15)
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_normal+0x6cf7, %rbx
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovaps %ymm4, (%rbx)
nop
nop
nop
cmp $19122, %r14

// Faulty Load
lea addresses_US+0xe2f7, %r14
clflush (%r14)
nop
nop
and %rsi, %rsi
mov (%r14), %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'00': 417}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
