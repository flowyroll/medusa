.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1d60b, %r13
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r13)
nop
nop
cmp $13876, %rcx
lea addresses_UC_ht+0x1add1, %rsi
lea addresses_WT_ht+0x1d6b1, %rdi
cmp %r9, %r9
mov $56, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x187b1, %r9
nop
xor %rbx, %rbx
movl $0x61626364, (%r9)
nop
sub %rsi, %rsi
lea addresses_D_ht+0x18ff1, %rsi
lea addresses_UC_ht+0xf821, %rdi
clflush (%rdi)
nop
nop
nop
sub $143, %r14
mov $22, %rcx
rep movsq
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x837f, %r9
nop
cmp $38899, %rcx
movw $0x6162, (%r9)
add $26697, %r9
lea addresses_normal_ht+0x126b1, %rdi
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
and $25958, %rdi
lea addresses_D_ht+0x16867, %rsi
lea addresses_normal_ht+0x4a2d, %rdi
nop
nop
nop
nop
xor $38329, %r14
mov $120, %rcx
rep movsq
nop
nop
nop
sub $61976, %rbx
lea addresses_UC_ht+0x10671, %rsi
lea addresses_D_ht+0x18431, %rdi
dec %rbx
mov $0, %rcx
rep movsb
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x10fb1, %r14
clflush (%r14)
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x12272, %r13
nop
nop
nop
and %rdi, %rdi
mov (%r13), %si
nop
add $31867, %r13
lea addresses_normal_ht+0x44b1, %r13
nop
nop
sub $63295, %rsi
mov (%r13), %r14d
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Store
lea addresses_A+0x26b1, %r10
nop
nop
nop
cmp %rdi, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
dec %r9

// Store
lea addresses_PSE+0x1b06c, %r8
nop
nop
and %r12, %r12
movb $0x51, (%r8)
nop
dec %r9

// Faulty Load
lea addresses_A+0x26b1, %rbx
nop
inc %rax
vmovaps (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'08': 2, '49': 8377, '00': 6437, '46': 7013}
49 49 46 49 49 49 49 00 49 49 49 49 00 46 00 46 00 00 46 00 46 49 49 46 00 49 49 49 00 49 49 00 46 49 00 49 46 49 49 46 49 46 00 49 46 49 46 46 00 49 46 46 46 00 00 49 00 49 49 49 46 00 49 46 49 49 00 49 00 00 00 46 49 46 00 46 46 00 00 00 00 00 49 00 00 00 00 00 00 49 46 46 49 46 49 46 49 49 49 46 00 49 00 46 49 46 46 49 49 49 46 49 46 00 49 46 00 00 46 46 46 00 49 00 49 49 46 46 49 46 49 49 00 00 00 46 00 49 00 49 46 46 49 00 49 46 00 49 46 00 49 49 49 49 46 49 49 46 00 49 49 46 46 49 49 46 46 46 49 49 46 46 46 46 00 00 46 46 49 00 00 46 46 49 00 46 49 49 00 00 46 49 46 49 46 49 00 46 49 00 49 49 46 49 00 00 49 49 46 49 49 49 00 00 46 00 46 49 49 49 49 00 46 00 49 46 46 49 46 49 46 00 49 46 46 46 49 49 00 46 00 49 00 46 00 46 49 46 46 00 46 00 00 00 46 46 00 46 49 46 49 46 00 46 00 00 49 49 46 00 46 46 49 49 00 00 49 49 46 49 49 49 49 46 49 00 49 00 46 46 49 49 49 49 49 46 46 00 46 00 46 49 49 49 49 49 46 00 00 00 49 49 00 49 49 49 46 00 46 46 49 00 00 49 49 49 00 46 46 00 49 49 49 00 49 00 49 46 49 49 00 49 49 49 49 46 46 46 49 49 00 00 46 46 46 00 49 49 46 49 49 46 00 00 49 00 00 46 00 46 46 49 46 46 46 49 49 49 49 46 49 46 00 46 49 00 49 49 46 00 49 46 46 00 46 49 00 46 00 49 00 49 49 00 49 00 00 46 00 46 46 46 46 00 00 46 00 00 49 46 00 00 00 46 46 00 49 49 00 46 00 49 00 46 00 49 49 49 46 46 46 49 49 49 49 49 49 00 46 46 00 00 00 00 49 49 00 49 46 00 46 00 49 00 49 49 46 49 00 00 00 49 49 49 49 00 49 46 46 00 49 49 49 46 49 00 49 00 46 49 49 49 46 49 49 49 46 49 00 46 00 49 49 00 46 00 00 46 46 00 00 00 49 00 49 49 46 00 49 46 00 46 49 46 46 00 00 00 49 49 00 49 46 49 49 49 46 49 46 00 49 46 00 00 49 00 49 46 46 00 46 49 46 46 00 49 49 00 46 49 46 00 49 49 00 46 49 49 46 49 00 49 00 49 46 00 49 46 00 46 49 46 00 46 49 00 00 49 00 46 46 00 00 46 49 46 49 49 46 00 49 46 49 49 49 00 00 00 49 49 46 46 46 49 00 49 46 49 46 00 00 00 49 00 49 49 46 46 00 49 46 46 46 49 00 49 00 46 00 46 46 46 00 46 46 00 00 49 46 49 49 49 49 00 00 49 49 46 46 00 46 00 46 49 46 49 46 46 46 49 46 49 49 46 46 46 49 00 46 49 00 49 46 46 00 46 00 00 46 46 00 49 49 49 00 00 49 46 00 46 49 46 46 46 00 00 46 00 46 00 00 00 49 49 00 49 00 49 49 00 00 46 49 49 00 49 49 49 49 46 46 00 00 49 49 00 49 49 46 00 46 00 49 46 46 49 49 00 46 00 49 49 49 49 00 46 46 00 49 00 46 49 46 00 00 46 46 46 46 49 00 49 49 46 49 46 46 46 46 49 46 00 49 00 00 46 00 46 46 46 46 49 49 46 46 49 49 49 46 49 00 49 46 00 49 49 46 00 00 46 46 46 00 49 49 46 49 00 46 46 49 00 00 49 46 00 49 49 00 46 46 49 00 49 49 49 00 46 49 49 46 00 46 46 49 46 46 49 46 46 00 46 00 00 49 49 00 49 49 49 00 46 49 49 46 00 00 46 49 46 46 49 46 00 00 49 49 49 00 00 46 46 46 49 49 49 00 00 49 00 46 49 00 00 46 49 49 49 46 49 49 00 00 49 46 46 49 46 46 00 46 49 49 00 00 46 49 46 46 00 49 46 49 00 00 00 46 00 46 00 49 49 49 46 46 49 49 49 49 49 46 46 46 49 00 46 00 46 49 49 46 49 00 46 49 00 49 49 49 49 49 46 46 49 46 49 49 00 49 46 00 46 00 46 49 46 46 00 00 49 46 46 00 00 49 49 00 00 49 49 49 46 46 49 46 46 49 00 00 46
*/
