.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1098a, %r8
nop
nop
nop
lfence
mov (%r8), %r15d
nop
nop
nop
sub $45049, %r10
lea addresses_WT_ht+0x2b93, %rax
nop
nop
nop
nop
nop
and %r12, %r12
movb $0x61, (%rax)
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x6593, %rsi
lea addresses_WT_ht+0x2ec3, %rdi
nop
nop
inc %r12
mov $39, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x5993, %r12
nop
nop
nop
nop
nop
sub $55452, %r15
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
nop
cmp $8777, %r10
lea addresses_UC_ht+0xdb99, %rdi
nop
nop
nop
add %rsi, %rsi
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
inc %r10
lea addresses_normal_ht+0xe28b, %rax
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rax), %r15d
nop
nop
cmp $45472, %r10
lea addresses_UC_ht+0x1089b, %r12
add %rcx, %rcx
movl $0x61626364, (%r12)
nop
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x10293, %rsi
lea addresses_A_ht+0x124f1, %rdi
clflush (%rsi)
nop
cmp %r12, %r12
mov $16, %rcx
rep movsb
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x14a93, %r15
and $31780, %r8
movb $0x61, (%r15)
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1edb7, %rax
nop
nop
nop
and $48656, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
nop
nop
inc %r10
lea addresses_A_ht+0x1bd93, %rsi
lea addresses_WC_ht+0xcfb3, %rdi
clflush (%rsi)
and %r13, %r13
mov $79, %rcx
rep movsw
cmp %r10, %r10
lea addresses_WC_ht+0xb793, %r8
xor %r15, %r15
movups (%r8), %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x1ae83, %rsi
lea addresses_D_ht+0x10993, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $64, %rcx
rep movsq
nop
nop
add $47267, %r13
lea addresses_D_ht+0x19a87, %rax
nop
nop
nop
nop
sub %r12, %r12
movb $0x61, (%rax)
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rsi

// Load
lea addresses_normal+0x18493, %rax
nop
nop
nop
cmp %rbp, %rbp
movaps (%rax), %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
xor $1047, %rax

// Store
lea addresses_WT+0x148a3, %rbp
nop
nop
nop
nop
nop
xor $38489, %r11
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
nop
nop
nop
add $30223, %rbp

// Store
lea addresses_PSE+0x1193, %r10
nop
nop
nop
nop
cmp $47554, %r15
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
nop
nop
nop
and %rax, %rax

// Store
mov $0x12f, %rbp
sub %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WC+0x1ee9c, %rbp
nop
and $10371, %rax
movw $0x5152, (%rbp)
nop
and $45706, %r11

// Store
lea addresses_D+0x15993, %rsi
nop
nop
sub $13994, %rbp
movw $0x5152, (%rsi)
nop
and $51097, %r11

// Faulty Load
lea addresses_D+0x15993, %rbx
nop
nop
cmp $65106, %r10
movb (%rbx), %r15b
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'52': 82, '36': 7}
52 52 52 52 36 52 52 52 52 52 52 52 52 36 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 36 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 36 52 52 52 52 52 52 52 52 52 52 52 52 36 52 36 52 52 52 52 52 52 36 52 52 52 52 52 52
*/
