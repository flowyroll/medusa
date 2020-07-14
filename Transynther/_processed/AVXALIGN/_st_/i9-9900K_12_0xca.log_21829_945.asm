.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d880, %r14
add $33179, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
xor $54390, %r14
lea addresses_D_ht+0x177e0, %rsi
xor $42851, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
add %r14, %r14
lea addresses_WT_ht+0x14f80, %r13
nop
nop
nop
nop
nop
and $64679, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
cmp %r11, %r11
lea addresses_D_ht+0x1b0c0, %rsi
lea addresses_normal_ht+0x440, %rdi
nop
nop
sub $27887, %rax
mov $30, %rcx
rep movsl
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x28a, %rsi
lea addresses_normal_ht+0x1ddd8, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
sub %r13, %r13
mov $19, %rcx
rep movsq
nop
cmp $14839, %rsi
lea addresses_D_ht+0x16b20, %rsi
lea addresses_normal_ht+0x16a30, %rdi
nop
nop
nop
add %rax, %rax
mov $73, %rcx
rep movsb
nop
and %r13, %r13
lea addresses_A_ht+0x1d838, %r13
clflush (%r13)
nop
and %rbp, %rbp
movl $0x61626364, (%r13)
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x1c940, %rsi
lea addresses_A_ht+0x19f80, %rdi
nop
nop
nop
nop
dec %r11
mov $108, %rcx
rep movsq
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x1e380, %rsi
lea addresses_WT_ht+0x30c4, %rdi
nop
add $8116, %r14
mov $59, %rcx
rep movsl
nop
cmp $6077, %r11
lea addresses_WT_ht+0x3998, %r11
nop
nop
nop
nop
nop
cmp $63007, %rdi
mov (%r11), %r13d
nop
nop
and $30755, %rax
lea addresses_WT_ht+0x18080, %rdi
nop
nop
nop
dec %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
cmp $62715, %r14
lea addresses_WT_ht+0x1ea84, %rsi
lea addresses_WC_ht+0x4380, %rdi
nop
nop
and %rbp, %rbp
mov $104, %rcx
rep movsq
nop
nop
nop
cmp $35821, %rax
lea addresses_UC_ht+0x1b4a8, %rcx
clflush (%rcx)
nop
and %rax, %rax
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor $40865, %rbp
lea addresses_WT_ht+0x9bd1, %r11
clflush (%r11)
nop
nop
nop
nop
nop
dec %r14
movb (%r11), %r13b
nop
xor $44678, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0xfb40, %rdx
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
nop
and $17312, %r8

// Store
lea addresses_PSE+0x980, %r8
nop
nop
nop
nop
nop
cmp $25984, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r8)
xor $35655, %rdx

// Store
lea addresses_UC+0x146a6, %rdx
nop
nop
nop
nop
nop
xor $44508, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%rdx)

// Exception!!!
mov (0), %r8
nop
xor %r9, %r9

// Store
lea addresses_normal+0x1b240, %r10
nop
cmp $56877, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r10)
nop
nop
cmp %r10, %r10

// Store
lea addresses_D+0x2310, %rbx
nop
inc %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rbx)
sub %r9, %r9

// Faulty Load
lea addresses_D+0x7b80, %rbx
nop
nop
nop
nop
add %r8, %r8
mov (%rbx), %di
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
