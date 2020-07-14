.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1c681, %rsi
lea addresses_D_ht+0x9c36, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $36829, %rbx
mov $24, %rcx
rep movsb
nop
nop
nop
nop
and $24997, %r9
lea addresses_WC_ht+0x19adf, %r10
nop
inc %r11
mov (%r10), %di
nop
inc %r9
lea addresses_D_ht+0x15b81, %rsi
lea addresses_UC_ht+0xd051, %rdi
nop
add %rdx, %rdx
mov $70, %rcx
rep movsl
nop
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x1e221, %r11
nop
nop
nop
sub %rcx, %rcx
mov (%r11), %r10
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x11a01, %rsi
lea addresses_normal_ht+0xfd97, %rdi
clflush (%rdi)
nop
cmp $20303, %r11
mov $39, %rcx
rep movsq
dec %rbx
lea addresses_D_ht+0x1de0d, %rdi
nop
cmp %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rdi)
cmp %rdi, %rdi
lea addresses_normal_ht+0xe881, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0xc5a1, %r11
clflush (%r11)
nop
nop
nop
cmp $99, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
and $45977, %r9
lea addresses_normal_ht+0x2ed1, %rsi
nop
nop
nop
nop
nop
dec %r9
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rdx
cmp %r10, %r10
lea addresses_UC_ht+0xda81, %rsi
nop
nop
nop
nop
nop
sub $57529, %r10
mov $0x6162636465666768, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x15881, %rsi
lea addresses_normal_ht+0x9aaf, %rdi
nop
nop
cmp %r11, %r11
mov $59, %rcx
rep movsw
nop
nop
nop
sub $1075, %rdi
lea addresses_UC_ht+0x3281, %r9
nop
dec %rdi
movb (%r9), %r10b
nop
nop
nop
nop
add $45294, %rcx
lea addresses_UC_ht+0xef81, %rcx
clflush (%rcx)
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x1ca01, %rsi
lea addresses_D_ht+0x177b1, %rdi
nop
nop
add %r9, %r9
mov $64, %rcx
rep movsw
nop
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rdi

// Store
lea addresses_A+0x1d281, %rbp
and %rbx, %rbx
movb $0x51, (%rbp)
nop
and %r13, %r13

// Store
lea addresses_PSE+0x19c81, %r10
nop
and $45252, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_A+0x12681, %r14
nop
nop
cmp $34834, %rdi
movb $0x51, (%r14)
nop
nop
cmp %r14, %r14

// Store
lea addresses_US+0x1d081, %rdi
nop
nop
nop
nop
cmp %r12, %r12
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_A+0x1d281, %r13
nop
nop
add $42035, %r12
mov (%r13), %edi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'51': 28}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
