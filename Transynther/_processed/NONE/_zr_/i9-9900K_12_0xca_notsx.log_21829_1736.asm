.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1c6d2, %r14
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %rax
movq %rax, (%r14)
nop
nop
nop
add $47532, %rdx
lea addresses_normal_ht+0x136d2, %rsi
lea addresses_WC_ht+0x1b9d2, %rdi
xor %r15, %r15
mov $40, %rcx
rep movsq
nop
nop
sub $732, %r14
lea addresses_A_ht+0x116d2, %rdx
clflush (%rdx)
nop
sub %rax, %rax
mov (%rdx), %r15d
sub %r14, %r14
lea addresses_WT_ht+0x1ded2, %r9
nop
nop
add %rdx, %rdx
movb $0x61, (%r9)
nop
nop
nop
nop
sub $60045, %rdi
lea addresses_normal_ht+0xf19a, %r9
nop
nop
nop
nop
nop
xor $44642, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
and $0xffffffffffffffc0, %r9
movntdq %xmm4, (%r9)
nop
nop
nop
nop
and $50863, %rax
lea addresses_D_ht+0x30d2, %rsi
lea addresses_D_ht+0x1438, %rdi
dec %rdx
mov $22, %rcx
rep movsl
nop
nop
cmp $62858, %rsi
lea addresses_D_ht+0x1c1d2, %rcx
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm3
and $0xffffffffffffffc0, %rcx
vmovaps %ymm3, (%rcx)
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x1bbf3, %rsi
lea addresses_WC_ht+0xb114, %rdi
nop
nop
nop
sub %r14, %r14
mov $29, %rcx
rep movsq
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x15f96, %r14
nop
nop
nop
nop
nop
add $39813, %rdi
mov (%r14), %rdx
nop
sub $42955, %r15
lea addresses_UC_ht+0xecd2, %rsi
lea addresses_UC_ht+0xed2, %rdi
clflush (%rsi)
nop
nop
nop
xor %r14, %r14
mov $23, %rcx
rep movsq
and %rax, %rax
lea addresses_normal_ht+0xeed2, %rdi
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x9b43, %r14
nop
xor %rdx, %rdx
mov (%r14), %rsi
nop
nop
nop
add $54965, %r15
lea addresses_A_ht+0xf6d2, %r15
nop
nop
nop
cmp %rdi, %rdi
movups (%r15), %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
nop
nop
add $24235, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0x1c6d2, %rsi
lea addresses_A+0x15be2, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $38624, %rbx
mov $47, %rcx
rep movsl
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_UC+0x15cd2, %rdx
nop
nop
nop
dec %rbx
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
xor $65222, %rsi

// Load
lea addresses_D+0x6652, %rdi
nop
nop
nop
sub $51279, %rdx
movb (%rdi), %bl
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_US+0x1cad2, %rcx
sub %rbp, %rbp
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
add $49844, %rdx

// Store
lea addresses_normal+0x38d2, %rdi
nop
inc %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rdi)
nop
xor %rdi, %rdi

// Store
mov $0x4d2, %r13
nop
nop
nop
sub $64717, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_A+0x186d2, %rdi
nop
inc %rdx
mov (%rdi), %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
