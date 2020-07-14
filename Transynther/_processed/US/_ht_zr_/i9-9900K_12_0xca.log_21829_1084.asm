.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e55c, %rsi
lea addresses_A_ht+0x1965c, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $87, %rcx
rep movsq
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x15edc, %rsi
lea addresses_A_ht+0x13e2c, %rdi
add %rbx, %rbx
mov $106, %rcx
rep movsw
sub $10610, %r10
lea addresses_D_ht+0x1f9c, %rdi
sub $32648, %r12
movb (%rdi), %cl
nop
nop
nop
and $33179, %rcx
lea addresses_D_ht+0x190dc, %rsi
lea addresses_UC_ht+0xec7c, %rdi
clflush (%rsi)
nop
nop
nop
add $43592, %r13
mov $110, %rcx
rep movsl
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x1757c, %rsi
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
sub $34812, %r13
lea addresses_WC_ht+0x193ec, %rsi
lea addresses_WT_ht+0xf90b, %rdi
inc %r10
mov $54, %rcx
rep movsl
nop
add %r12, %r12
lea addresses_D_ht+0x1d6ec, %r13
inc %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0xc65c, %r10
nop
nop
nop
nop
inc %rbp
mov (%r10), %ecx
nop
nop
nop
add $20855, %rdi
lea addresses_WT_ht+0xea5c, %rdi
nop
nop
inc %rsi
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x17764, %rbp
nop
nop
nop
sub $48202, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rbp)
nop
nop
nop
nop
nop
cmp $26551, %r12
lea addresses_normal_ht+0x16c5c, %rbp
nop
nop
nop
nop
nop
and %r13, %r13
movb (%rbp), %r10b
cmp $35832, %rbx
lea addresses_A_ht+0x1185c, %r10
nop
nop
nop
nop
nop
sub $58840, %rcx
movw $0x6162, (%r10)
sub $42995, %rsi
lea addresses_WT_ht+0x1615c, %rbp
and %rdi, %rdi
movb (%rbp), %r13b
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0xd560, %rsi
lea addresses_WC_ht+0xc7dc, %rdi
nop
nop
nop
add $52986, %r10
mov $103, %rcx
rep movsb
nop
nop
nop
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_RW+0x19060, %rax
nop
nop
nop
cmp $7749, %r14
movb $0x51, (%rax)
nop
nop
nop
inc %rsi

// Store
lea addresses_RW+0x9534, %rax
nop
nop
nop
nop
dec %r9
movw $0x5152, (%rax)
nop
nop
nop
add $2666, %rdi

// Store
lea addresses_A+0xbb5c, %rsi
xor %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
inc %r14

// Faulty Load
lea addresses_US+0x35c, %r10
and $6806, %r13
movups (%r10), %xmm6
vpextrq $1, %xmm6, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'44': 35, '49': 8379, '48': 97, '00': 12453, '46': 865}
00 49 46 46 46 00 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 48 46 46 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 48 46 46 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 49 00 49 00 49 00 49 00 49 00 49 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 49 00 49 46 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 49 00 49 00 49 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 48 46 46 46 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 49 00 49 00 49 46 46 46 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 49 00 00 49 00 49 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 44 46 46 46 00 00 00 00 00 00 00 00 49 00 49 00 44 44 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 46 46 46 00 00 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00
*/
