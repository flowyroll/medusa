.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1d017, %rsi
lea addresses_A_ht+0x1a24f, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $95, %rcx
rep movsb
nop
nop
nop
dec %rdx
lea addresses_D_ht+0xbc17, %r8
clflush (%r8)
nop
nop
nop
nop
nop
and $35622, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %r8
movaps %xmm2, (%r8)
nop
dec %rax
lea addresses_WC_ht+0x186e7, %rdi
sub %rsi, %rsi
movb (%rdi), %bl
nop
nop
nop
nop
and $47098, %rsi
lea addresses_WT_ht+0x1c7f7, %rsi
cmp %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
and %rdx, %rdx
lea addresses_A_ht+0x1b07f, %rsi
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rsi)
nop
and %rsi, %rsi
lea addresses_UC_ht+0x3317, %rsi
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x14617, %rax
nop
xor $34688, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rax)
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x17387, %rax
nop
nop
nop
xor %rbx, %rbx
movb $0x61, (%rax)
nop
nop
nop
xor $48736, %r8
lea addresses_D_ht+0x1ba97, %rcx
nop
cmp $6774, %rbx
mov (%rcx), %dx
nop
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0xeb07, %rax
add %rdx, %rdx
movb (%rax), %r8b
nop
nop
nop
xor $11736, %r8
lea addresses_WT_ht+0x1ab9b, %rsi
lea addresses_WC_ht+0x1293f, %rdi
nop
cmp $5269, %r14
mov $107, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1192f, %rsi
lea addresses_WC_ht+0x5517, %rdi
nop
nop
and $44949, %r14
mov $90, %rcx
rep movsw
nop
sub $15139, %rbx
lea addresses_UC_ht+0x11017, %rdi
nop
nop
add $5019, %rax
movb (%rdi), %dl
nop
nop
nop
nop
sub $50662, %rax
lea addresses_D_ht+0x10e17, %rsi
lea addresses_WT_ht+0x1817, %rdi
nop
nop
dec %rax
mov $64, %rcx
rep movsl
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0xe14d, %rsi
lea addresses_UC+0x2ba7, %rdi
clflush (%rdi)
nop
nop
nop
add %r9, %r9
mov $95, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_D+0x9633, %r12
cmp %rdx, %rdx
mov (%r12), %ecx
nop
nop
sub $21064, %rdi

// Store
mov $0x7e6, %rbx
nop
nop
nop
add $45997, %rdi
movl $0x51525354, (%rbx)
nop
nop
nop
nop
cmp $30272, %r9

// Store
lea addresses_US+0x1d2f7, %r9
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%r9)
nop
and $14270, %rbx

// Faulty Load
lea addresses_normal+0x1c417, %rbx
nop
nop
nop
cmp %rcx, %rcx
mov (%rbx), %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
