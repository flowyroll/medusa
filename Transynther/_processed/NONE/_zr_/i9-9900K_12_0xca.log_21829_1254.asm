.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x10c48, %rsi
lea addresses_UC_ht+0x14460, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $18520, %rax
mov $34, %rcx
rep movsq
nop
nop
nop
nop
nop
add $17530, %rdi
lea addresses_D_ht+0x3148, %rsi
lea addresses_normal_ht+0x1d738, %rdi
nop
nop
and %rbp, %rbp
mov $123, %rcx
rep movsw
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x14d48, %rcx
nop
nop
nop
nop
nop
add $13160, %r14
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x12e48, %rsi
lea addresses_D_ht+0xeca8, %rdi
sub $34310, %rbp
mov $109, %rcx
rep movsb
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x12ea8, %r14
cmp %rbx, %rbx
mov (%r14), %ebp
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0xe648, %rsi
lea addresses_UC_ht+0xe328, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $22, %rcx
rep movsl
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0xa728, %rcx
nop
and $20694, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x1548e, %rsi
lea addresses_normal_ht+0x34c4, %rdi
nop
nop
nop
nop
xor $39038, %r10
mov $6, %rcx
rep movsl
and %rbx, %rbx
lea addresses_D_ht+0x11808, %rsi
lea addresses_D_ht+0x1c388, %rdi
nop
nop
sub %rbx, %rbx
mov $33, %rcx
rep movsq
nop
nop
nop
xor $12182, %rbx
lea addresses_WT_ht+0x16fb0, %rbx
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rbx)
nop
nop
and $31176, %rsi
lea addresses_D_ht+0x14b48, %rsi
clflush (%rsi)
nop
nop
nop
cmp $15545, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
cmp $26915, %r14
lea addresses_A_ht+0x19ed0, %rax
nop
nop
nop
nop
nop
xor %rsi, %rsi
movups (%rax), %xmm1
vpextrq $1, %xmm1, %rcx
nop
inc %rax
lea addresses_D_ht+0x11ecc, %rsi
lea addresses_D_ht+0x6678, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $65, %rcx
rep movsb
nop
sub %rbx, %rbx
lea addresses_A_ht+0x17ec8, %rbx
nop
and $27186, %rsi
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x5648, %rsi
lea addresses_WC_ht+0x14648, %rdi
and $5779, %r10
mov $51, %rcx
rep movsl
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx

// Load
lea addresses_PSE+0xd4bd, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add %r15, %r15
mov (%rcx), %r14w
nop
sub %r14, %r14

// Load
lea addresses_RW+0xc48, %r8
nop
nop
nop
nop
inc %rax
movups (%r8), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
xor $44756, %rcx

// Store
lea addresses_PSE+0x79e4, %r15
nop
nop
xor $22010, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovaps %ymm6, (%r15)
nop
xor $20869, %r8

// Faulty Load
lea addresses_WC+0x18648, %r14
clflush (%r14)
nop
nop
xor %rbp, %rbp
mov (%r14), %r15d
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
