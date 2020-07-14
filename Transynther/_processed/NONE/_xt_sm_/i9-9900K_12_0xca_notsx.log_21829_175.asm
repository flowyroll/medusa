.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xa04b, %r13
nop
nop
nop
nop
add $35296, %r12
movb $0x61, (%r13)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0x1cb4f, %r12
nop
nop
nop
cmp $49171, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
nop
nop
sub $26797, %r8
lea addresses_D_ht+0x684b, %rsi
lea addresses_D_ht+0x9edb, %rdi
nop
nop
sub %r12, %r12
mov $15, %rcx
rep movsq
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x14a1f, %rsi
clflush (%rsi)
nop
nop
nop
sub $8121, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
xor $6458, %rbp
lea addresses_normal_ht+0x2b4b, %r8
nop
nop
nop
nop
xor %r12, %r12
mov (%r8), %bp
nop
nop
inc %r8
lea addresses_UC_ht+0x41cb, %rsi
lea addresses_WT_ht+0x887b, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $12632, %r13
mov $118, %rcx
rep movsq
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x15c4b, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%rsi)
nop
sub $60347, %rdi
lea addresses_WT_ht+0xec4b, %rdi
nop
nop
nop
dec %rsi
movb (%rdi), %r15b
nop
nop
nop
sub $17785, %r12
lea addresses_normal_ht+0x15c4b, %rsi
lea addresses_WT_ht+0xe77b, %rdi
nop
nop
sub %r15, %r15
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r13
lea addresses_A_ht+0x1a04b, %rsi
lea addresses_UC_ht+0x1cc3f, %rdi
nop
add %rbp, %rbp
mov $78, %rcx
rep movsl
xor %rcx, %rcx
lea addresses_A_ht+0x14ab, %r12
xor %r13, %r13
movb $0x61, (%r12)
nop
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1d04b, %r10
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%r10)
lfence

// Store
lea addresses_PSE+0x17f4b, %rbp
nop
nop
add %rdx, %rdx
movl $0x51525354, (%rbp)
nop
nop
add $22781, %r10

// REPMOV
lea addresses_PSE+0x984b, %rsi
lea addresses_WC+0x171bb, %rdi
clflush (%rsi)
clflush (%rdi)
add %r10, %r10
mov $14, %rcx
rep movsq
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_RW+0xc30b, %r11
xor $33806, %r14
movups (%r11), %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
add %r14, %r14

// Store
lea addresses_WT+0x17a49, %rdi
nop
nop
add $37506, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm0, (%rdi)
and $1976, %rdi

// Store
lea addresses_A+0x1aacb, %r13
clflush (%r13)
nop
nop
nop
cmp $47374, %rdx
mov $0x5152535455565758, %r11
movq %r11, (%r13)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_WC+0x8cb, %r13
nop
nop
nop
cmp %rdi, %rdi
movb (%r13), %cl
nop
nop
and $15195, %rsi

// Store
lea addresses_RW+0x165a3, %rdi
cmp $25166, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
dec %r14

// Store
lea addresses_A+0x644b, %r11
nop
nop
xor $7139, %r14
movb $0x51, (%r11)
nop
cmp $64572, %r13

// Store
lea addresses_WT+0x1584b, %rdx
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rdx)
dec %r10

// Store
mov $0x2eecd50000000a4b, %rbp
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rbp)
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_WT+0x1d04b, %rdx
clflush (%rdx)
cmp $26079, %r14
movb (%rdx), %r11b
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 5}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
