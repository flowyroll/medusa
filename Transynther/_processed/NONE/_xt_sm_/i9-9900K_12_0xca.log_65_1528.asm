.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13380, %rax
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x51c0, %r9
nop
nop
dec %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
inc %r12
lea addresses_A_ht+0x180c0, %rsi
lea addresses_A_ht+0x7cbb, %rdi
cmp %rax, %rax
mov $118, %rcx
rep movsw
nop
and %rsi, %rsi
lea addresses_A_ht+0x186c0, %r9
nop
nop
inc %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%r9)
nop
cmp %r12, %r12
lea addresses_UC_ht+0x14320, %rsi
xor $17196, %rdi
mov (%rsi), %rax
nop
nop
nop
nop
xor $59454, %r11
lea addresses_A_ht+0xe724, %rsi
lea addresses_WT_ht+0xbec0, %rdi
nop
cmp %rax, %rax
mov $30, %rcx
rep movsw
nop
nop
inc %rdi
lea addresses_A_ht+0x2f40, %rsi
lea addresses_UC_ht+0xe6c0, %rdi
nop
nop
nop
nop
and $10469, %r11
mov $86, %rcx
rep movsl
nop
nop
nop
nop
xor $19228, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rax
push %rdi

// Store
mov $0x980, %rax
nop
nop
nop
nop
and $21212, %rdi
movb $0x51, (%rax)
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_A+0x1ab20, %rax
nop
nop
inc %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
nop
sub $63119, %r15

// Store
lea addresses_PSE+0x8360, %rdi
nop
nop
nop
nop
nop
and $62139, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movaps %xmm4, (%rdi)
nop
nop
and $10799, %r14

// Load
mov $0x9f0, %r14
nop
nop
nop
nop
nop
sub $47539, %rax
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
nop
nop
nop
xor $50328, %rax

// Load
lea addresses_WT+0x1e4c0, %r15
xor %r14, %r14
movb (%r15), %r11b
cmp %r12, %r12

// Load
lea addresses_UC+0x1b8c0, %rax
clflush (%rax)
nop
xor %r14, %r14
movups (%rax), %xmm3
vpextrq $0, %xmm3, %r11
xor $25480, %r10

// Store
lea addresses_PSE+0xfcc0, %r14
nop
add $37768, %r12
mov $0x5152535455565758, %r11
movq %r11, (%r14)
nop
nop
nop
nop
xor $37487, %r11

// Store
mov $0x41cd3b0000000640, %rax
cmp %r15, %r15
movw $0x5152, (%rax)
nop
nop
inc %r15

// Store
lea addresses_normal+0xb4c0, %r15
nop
nop
nop
nop
cmp %rax, %rax
movw $0x5152, (%r15)
sub $5260, %rax

// Load
lea addresses_WT+0xcdc0, %rdi
nop
nop
nop
cmp %r11, %r11
mov (%rdi), %r15
sub %r15, %r15

// Load
lea addresses_WC+0x148c0, %r10
nop
nop
nop
nop
cmp %r15, %r15
movups (%r10), %xmm6
vpextrq $0, %xmm6, %r11
xor $44563, %rax

// Faulty Load
lea addresses_normal+0xb4c0, %rdi
and $17582, %r10
mov (%rdi), %r12w
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'52': 65}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
