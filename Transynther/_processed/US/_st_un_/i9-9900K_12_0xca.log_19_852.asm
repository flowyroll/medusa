.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x164dc, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov (%rdi), %ebx
nop
nop
add $65317, %rdi
lea addresses_UC_ht+0x9fa4, %rsi
nop
nop
nop
and %rdx, %rdx
mov (%rsi), %r11d
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0x14244, %rdx
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
nop
nop
and $58977, %rdi
lea addresses_WT_ht+0x18c58, %rsi
lea addresses_D_ht+0xd844, %rdi
nop
nop
nop
cmp $41383, %r13
mov $21, %rcx
rep movsb
nop
add %rbx, %rbx
lea addresses_D_ht+0x9444, %rsi
lea addresses_normal_ht+0x8544, %rdi
nop
nop
mfence
mov $62, %rcx
rep movsw
add $62230, %rbp
lea addresses_D_ht+0xc5b4, %rsi
lea addresses_WC_ht+0x18fe0, %rdi
nop
nop
nop
sub $1445, %r13
mov $48, %rcx
rep movsw
nop
nop
xor $22683, %rcx
lea addresses_WT_ht+0xdf64, %rbx
nop
and %r11, %r11
movb $0x61, (%rbx)
sub %rsi, %rsi
lea addresses_UC_ht+0x1e044, %rdx
nop
nop
and %rdi, %rdi
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
sub $8495, %rbp
lea addresses_A_ht+0x174ec, %rsi
lea addresses_WC_ht+0x12ac4, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $13358, %r13
mov $6, %rcx
rep movsw
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0xd94, %rsi
lea addresses_A_ht+0x15d44, %rdi
nop
nop
nop
sub $34877, %rdx
mov $67, %rcx
rep movsq
nop
add $56224, %rdx
lea addresses_WC_ht+0x1d614, %rsi
lea addresses_WT_ht+0x1b524, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $83, %rcx
rep movsl
nop
and $2037, %rcx
lea addresses_normal_ht+0x5044, %rsi
lea addresses_normal_ht+0x1c3c4, %rdi
nop
nop
nop
add $49825, %rdx
mov $50, %rcx
rep movsw
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x6684, %rdx
nop
nop
nop
nop
xor %r13, %r13
movb $0x61, (%rdx)
sub %rdi, %rdi
lea addresses_WT_ht+0x4d24, %rsi
lea addresses_UC_ht+0x13244, %rdi
nop
nop
nop
nop
xor $41056, %r13
mov $113, %rcx
rep movsw
add $52904, %rbp
lea addresses_UC_ht+0x1af7c, %rbp
nop
nop
nop
add $3005, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
cmp $22927, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x2404, %rbp
nop
nop
nop
nop
nop
sub $63692, %r8
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
nop
nop
cmp %r8, %r8

// REPMOV
lea addresses_PSE+0x1b1f4, %rsi
lea addresses_US+0x7844, %rdi
nop
nop
cmp $1217, %r8
mov $7, %rcx
rep movsw
nop
nop
nop
nop
add $8373, %r9

// Faulty Load
lea addresses_US+0x7844, %rsi
nop
nop
xor %r12, %r12
mov (%rsi), %r8w
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'02': 1, '8a': 1, '0a': 1, 'f8': 1, 'c8': 1, 'fe': 1, 'ec': 1, '7e': 1, 'da': 1, '33': 8, 'ee': 1, 'c6': 1}
33 33 33 ee fe 02 0a c8 33 8a 33 da 33 7e c6 f8 ec 33 33
*/
