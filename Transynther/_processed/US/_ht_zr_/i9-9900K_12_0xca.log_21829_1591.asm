.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6cee, %r9
nop
nop
nop
nop
nop
xor %r14, %r14
mov (%r9), %r11w
nop
nop
nop
nop
sub $27421, %r8
lea addresses_WT_ht+0x8586, %rbx
nop
nop
nop
nop
nop
dec %rax
movl $0x61626364, (%rbx)
cmp $61619, %r9
lea addresses_A_ht+0x1f86, %r8
sub %rsi, %rsi
movups (%r8), %xmm7
vpextrq $0, %xmm7, %rbx
and %r14, %r14
lea addresses_normal_ht+0x4f86, %rsi
lea addresses_D_ht+0x5d56, %rdi
nop
nop
xor $32870, %r9
mov $36, %rcx
rep movsl
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x18896, %rsi
lea addresses_UC_ht+0x3386, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %rax, %rax
mov $102, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1e786, %rcx
nop
nop
nop
nop
and $52275, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %rcx
vmovaps %ymm2, (%rcx)
nop
nop
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x1c6ba, %r9
nop
and %r14, %r14
mov (%r9), %ecx
nop
xor $8238, %rsi
lea addresses_normal_ht+0xc3f4, %r14
nop
sub %rdi, %rdi
movups (%r14), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0xf106, %r11
nop
nop
nop
nop
add $27133, %rsi
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rdi
nop
sub $51654, %rdi
lea addresses_D_ht+0x10472, %rbx
nop
nop
nop
add $9375, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x406, %rsi
lea addresses_D_ht+0x2786, %rdi
nop
nop
lfence
mov $106, %rcx
rep movsb
nop
nop
nop
nop
xor $35180, %rsi
lea addresses_UC_ht+0xb3ea, %rsi
lea addresses_D_ht+0xcc86, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $94, %rcx
rep movsw
nop
nop
nop
nop
and $57796, %rdi
lea addresses_WC_ht+0x5386, %rsi
lea addresses_WT_ht+0x14a86, %rdi
nop
xor $31523, %r11
mov $15, %rcx
rep movsb
nop
nop
add $47340, %rbx
lea addresses_WC_ht+0xd406, %r8
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r8)
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0xa6a6, %rsi
clflush (%rsi)
nop
nop
nop
sub %r9, %r9
mov (%rsi), %eax
nop
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rsi

// Store
lea addresses_PSE+0x1d786, %r9
nop
nop
nop
nop
nop
cmp $31345, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
xor %r10, %r10

// Load
lea addresses_US+0x1a506, %r12
nop
inc %r8
mov (%r12), %r9
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_normal+0x14da6, %r9
nop
nop
nop
nop
nop
cmp $9724, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
nop
sub %r9, %r9

// Load
lea addresses_A+0x16046, %rsi
nop
xor $53454, %r12
movb (%rsi), %cl
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_US+0x14b86, %r9
inc %r8
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'44': 5923, '45': 9955, '00': 5951}
45 00 45 00 00 00 00 45 44 00 00 00 00 00 45 45 45 45 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 44 44 00 45 44 00 45 45 44 00 00 45 45 44 00 45 44 00 45 45 44 45 45 44 00 00 45 44 00 00 45 00 45 45 45 45 44 00 45 44 00 45 45 45 44 45 44 00 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 44 45 44 45 44 00 00 45 44 45 44 45 44 45 45 44 45 44 45 44 45 45 44 45 45 44 00 45 45 45 45 45 44 00 00 45 44 00 45 45 44 45 45 45 45 45 44 00 45 45 44 00 00 45 45 45 45 44 45 45 44 00 00 45 44 00 00 00 45 00 45 44 00 45 44 45 45 45 45 44 45 44 00 45 45 45 00 00 00 45 44 45 44 45 44 00 45 45 45 45 45 44 45 44 45 44 45 44 45 44 45 44 45 45 44 44 00 00 45 44 00 00 00 00 00 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 45 00 00 45 44 00 00 45 44 00 45 45 44 45 00 45 44 45 45 45 45 44 45 45 44 00 00 45 44 00 00 45 44 45 45 45 44 00 00 00 00 45 44 00 00 45 45 45 45 44 00 00 45 44 00 00 45 44 45 44 45 44 45 44 45 45 44 00 45 45 44 00 00 45 00 45 44 00 00 45 44 00 45 44 00 45 44 00 45 44 45 00 45 44 00 00 00 45 00 45 44 45 44 00 00 00 45 45 44 00 00 45 44 45 44 45 44 00 00 45 44 00 00 00 00 45 44 45 45 44 00 45 44 45 44 00 00 00 45 45 45 44 00 45 44 00 00 45 44 00 45 44 45 45 45 00 45 44 00 45 45 44 00 00 45 44 45 44 45 44 45 44 45 44 45 00 45 44 45 45 44 45 45 44 00 45 44 45 44 45 44 45 44 45 44 00 00 45 44 00 00 45 45 44 44 00 45 44 45 00 00 45 44 45 44 45 44 45 44 00 45 45 44 00 45 44 45 44 45 44 45 45 45 45 45 45 44 00 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 45 00 00 45 00 45 44 45 44 00 45 45 44 45 00 00 00 45 44 00 00 45 45 45 45 00 45 44 45 44 45 44 45 44 45 45 45 45 00 00 00 00 00 00 45 44 45 44 45 44 45 45 45 45 45 00 45 44 45 44 45 44 45 44 00 00 45 44 45 44 00 00 00 00 00 45 45 45 44 00 00 45 44 00 45 45 45 45 45 44 45 44 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 45 44 00 00 00 00 45 45 45 44 00 45 45 44 45 44 45 44 45 44 45 44 00 00 00 00 00 45 44 45 44 45 45 45 44 00 45 44 00 45 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 44 45 44 45 44 00 45 00 45 44 00 00 00 00 00 00 45 44 45 44 45 44 00 00 45 45 45 44 45 44 00 45 45 44 45 45 45 45 44 44 45 44 45 44 00 45 45 45 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 45 44 00 45 44 00 00 45 45 44 45 45 44 45 44 45 45 44 00 45 44 00 00 00 45 44 00 45 45 45 44 00 45 44 45 44 45 44 45 44 45 44 00 00 44 00 00 00 45 44 45 45 45 44 45 44 00 00 00 45 45 44 00 00 00 45 45 44 45 44 45 44 00 45 45 44 45 44 45 00 45 45 45 45 45 45 44 45 45 44 45 44 45 44 45 45 44 45 44 45 44 45 44 45 44 45 45 44 45 44 45 45 44 00 00 45 45 44 00 00 00 00 45 44 45 44 00 00 00 00 45 44 45 44 45 44 45 44 00 45 45 00 00 45 45 44 00 00 45 45 44 45 45 45 45 45 45 45 44 45 45 45 44 45 44 00 45 45 44 45 44 45 44 45 44 00 00 45 45 44 00 00 45 44 00 45 45 44 00 45 44 45 45 00 45 44 00 00 45 44 00 00 45 44 45 44 45 45 44 00 45 45 44 00 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00 45 45 44 00 45 44 45 44 45 45 44 00 00 00 45 44 45 44
*/
