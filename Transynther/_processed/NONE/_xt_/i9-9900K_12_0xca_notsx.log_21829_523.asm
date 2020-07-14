.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x84c3, %rdi
xor $10749, %rax
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
xor %rax, %rax
lea addresses_WC_ht+0x7dc3, %r15
clflush (%r15)
nop
nop
add %rax, %rax
mov (%r15), %r12d
nop
sub $25260, %r11
lea addresses_WT_ht+0x133c3, %rcx
dec %rax
movb (%rcx), %r15b
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x7a03, %r12
nop
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %r12
vmovaps %ymm7, (%r12)
nop
nop
nop
nop
cmp $14010, %rdi
lea addresses_WC_ht+0x1a443, %r15
xor %rcx, %rcx
mov (%r15), %r11w
nop
sub $6433, %r12
lea addresses_A_ht+0xfcc3, %r15
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%r15), %ecx
xor $13571, %rdi
lea addresses_WT_ht+0x11851, %rsi
lea addresses_WT_ht+0xa9c3, %rdi
nop
cmp $14267, %r11
mov $34, %rcx
rep movsl
nop
add %r12, %r12
lea addresses_WT_ht+0x100c3, %rsi
lea addresses_WT_ht+0xc2c3, %rdi
nop
nop
nop
and %r15, %r15
mov $97, %rcx
rep movsb
nop
nop
nop
cmp $55608, %rdi
lea addresses_UC_ht+0x148c3, %r8
nop
nop
nop
nop
inc %r15
mov (%r8), %di
nop
nop
nop
cmp $57989, %rsi
lea addresses_WC_ht+0xc067, %r11
nop
nop
nop
nop
nop
and $26949, %rax
movb (%r11), %cl
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0x12c43, %r8
nop
nop
nop
nop
inc %rsi
movb (%r8), %r15b
nop
nop
nop
and $27002, %r8
lea addresses_WC_ht+0x2b03, %rdi
nop
xor %r11, %r11
movb (%rdi), %r15b
nop
nop
nop
cmp $32878, %r11
lea addresses_UC_ht+0x4ac3, %rsi
lea addresses_WC_ht+0x1e34b, %rdi
nop
nop
nop
and %r11, %r11
mov $54, %rcx
rep movsw
nop
nop
cmp $59556, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x104c3, %r10
nop
nop
nop
nop
nop
add %r14, %r14
mov (%r10), %r9
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_D+0x2643, %r14
clflush (%r14)
nop
nop
nop
nop
nop
mfence
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_UC+0x90b, %rbp
nop
xor %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%rbp)
nop
add %rsi, %rsi

// REPMOV
lea addresses_normal+0x66c3, %rsi
lea addresses_normal+0x1543, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $38, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r8, %r8

// REPMOV
lea addresses_PSE+0x145c3, %rsi
lea addresses_A+0x1a283, %rdi
nop
nop
nop
nop
nop
sub $29409, %rbp
mov $6, %rcx
rep movsw
nop
nop
nop
nop
sub $3868, %r10

// Faulty Load
lea addresses_A+0xb0c3, %r8
clflush (%r8)
nop
nop
nop
nop
cmp %r14, %r14
mov (%r8), %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
