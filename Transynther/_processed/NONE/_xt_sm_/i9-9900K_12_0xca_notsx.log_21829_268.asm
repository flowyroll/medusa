.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1ab54, %rsi
lea addresses_WC_ht+0xe6d4, %rdi
xor %rax, %rax
mov $60, %rcx
rep movsl
nop
nop
nop
xor $14006, %rax
lea addresses_normal_ht+0xc4d4, %r12
sub $13363, %r11
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
inc %r11
lea addresses_D_ht+0x2d54, %r12
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
nop
xor $43953, %r12
lea addresses_UC_ht+0x13f54, %r11
clflush (%r11)
nop
nop
xor %rcx, %rcx
movb (%r11), %al
nop
add $11384, %rdi
lea addresses_D_ht+0xa78e, %rsi
lea addresses_WC_ht+0x18954, %rdi
cmp %r15, %r15
mov $8, %rcx
rep movsq
nop
add $41351, %rcx
lea addresses_D_ht+0xfd54, %rbp
nop
nop
and $33545, %r15
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
xor $2516, %r15
lea addresses_D_ht+0x15154, %r11
sub $30420, %rax
mov (%r11), %r12
nop
nop
nop
nop
cmp $34786, %r12
lea addresses_normal_ht+0xeb54, %r12
add $11937, %r15
movb (%r12), %al
nop
nop
nop
xor $19229, %r12
lea addresses_WC_ht+0x11d54, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
movb $0x61, (%rdi)
nop
nop
nop
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0x18454, %r9
nop
sub %r13, %r13
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
xor $32510, %r12

// Store
lea addresses_D+0xd0a4, %r13
add %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%r13)
add %r12, %r12

// REPMOV
lea addresses_WT+0x1f754, %rsi
lea addresses_PSE+0x14154, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $29, %rcx
rep movsb
nop
nop
nop
nop
sub $23562, %r13

// Store
lea addresses_WT+0x1f954, %r9
nop
nop
and $20910, %r13
mov $0x5152535455565758, %r12
movq %r12, (%r9)
cmp $62774, %rsi

// Store
lea addresses_normal+0x7314, %rdx
sub %r13, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
add $36811, %rsi

// Store
lea addresses_PSE+0x14154, %rsi
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_US+0x11c5e, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp $64863, %rdx
movw $0x5152, (%r9)
sub $9276, %r9

// Store
mov $0xdd4, %rcx
nop
nop
sub $47662, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rcx)
inc %rdi

// Faulty Load
lea addresses_PSE+0x14154, %rdx
nop
nop
nop
nop
cmp $47594, %rdi
mov (%rdx), %esi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
