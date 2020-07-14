.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x954d, %r8
nop
nop
nop
nop
nop
cmp $47357, %r12
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x12a55, %rsi
lea addresses_WT_ht+0x16ed1, %rdi
nop
nop
nop
nop
xor $28996, %rax
mov $64, %rcx
rep movsb
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x1d255, %r8
clflush (%r8)
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x6162, (%r8)
nop
nop
inc %rsi
lea addresses_A_ht+0x1493d, %rsi
lea addresses_A_ht+0x17555, %rdi
nop
nop
nop
add $57402, %r13
mov $24, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0xd5, %r12
nop
nop
nop
and $34657, %r13
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
sub $29155, %rcx
lea addresses_normal_ht+0x16a55, %rdi
nop
nop
nop
nop
nop
sub $60247, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
and $46392, %r13
lea addresses_A_ht+0xe655, %rsi
lea addresses_WC_ht+0x5a7d, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov $54, %rcx
rep movsb
add $1292, %rdi
lea addresses_normal_ht+0xbe55, %r12
nop
sub $19675, %rcx
mov (%r12), %edi
nop
xor %rcx, %rcx
lea addresses_WT_ht+0xaa55, %rsi
lea addresses_normal_ht+0x9abe, %rdi
clflush (%rsi)
nop
nop
nop
xor %r12, %r12
mov $47, %rcx
rep movsw
cmp $4130, %rdi
lea addresses_A_ht+0x1add5, %rsi
lea addresses_A_ht+0x12a55, %rdi
clflush (%rdi)
cmp $54799, %r8
mov $20, %rcx
rep movsb
cmp $41137, %r11
lea addresses_UC_ht+0xcf15, %rdi
cmp %rcx, %rcx
mov (%rdi), %r12d
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x18c15, %rsi
lea addresses_UC_ht+0x1ae55, %rdi
xor %r8, %r8
mov $0, %rcx
rep movsw
nop
nop
dec %r8
lea addresses_A_ht+0x16d75, %r12
nop
nop
nop
nop
inc %r13
movw $0x6162, (%r12)
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0xb255, %r11
nop
nop
nop
nop
nop
dec %rdi
mov (%r11), %rax
add $18123, %rdi
lea addresses_A_ht+0x1e015, %rsi
lea addresses_A_ht+0xe7d5, %rdi
nop
add %r11, %r11
mov $25, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $57747, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rbx

// Store
lea addresses_D+0x6915, %rbx
nop
nop
nop
dec %r14
movw $0x5152, (%rbx)
xor $58576, %r15

// Store
lea addresses_A+0xa655, %rbp
nop
nop
nop
nop
nop
xor %rax, %rax
movw $0x5152, (%rbp)
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_D+0x19860, %r10
xor %r15, %r15
movb $0x51, (%r10)
nop
nop
nop
cmp $62387, %r15

// Store
lea addresses_WC+0xa655, %r15
nop
cmp $25516, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r15)
cmp %r10, %r10

// Store
lea addresses_normal+0x1c255, %r15
nop
nop
nop
xor $55361, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
xor $2347, %rax

// Store
mov $0x655, %r10
nop
nop
nop
nop
add %r15, %r15
movl $0x51525354, (%r10)
nop
sub %r8, %r8

// Store
lea addresses_WT+0x1acc7, %rbp
nop
nop
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r8
movq %r8, (%rbp)
nop
nop
xor $3812, %r15

// Faulty Load
lea addresses_PSE+0x19255, %rbp
nop
cmp %r15, %r15
mov (%rbp), %ebx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
