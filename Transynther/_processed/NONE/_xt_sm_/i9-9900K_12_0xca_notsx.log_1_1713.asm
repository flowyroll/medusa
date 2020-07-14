.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x18e4f, %rsi
lea addresses_normal_ht+0xce9f, %rdi
nop
nop
sub $16033, %r10
mov $78, %rcx
rep movsb
nop
nop
nop
nop
nop
and $3711, %r8
lea addresses_normal_ht+0x126ff, %rsi
lea addresses_WT_ht+0xd665, %rdi
nop
nop
inc %rax
mov $107, %rcx
rep movsw
nop
cmp $24778, %rax
lea addresses_UC_ht+0x19acf, %rsi
lea addresses_WT_ht+0x1db7f, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $2, %rcx
rep movsl
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_D+0x2b8b, %rdx
nop
nop
nop
nop
nop
cmp $12198, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
sub %rbp, %rbp

// Load
mov $0x2bee60000000d7f, %rax
nop
nop
nop
nop
nop
add %r8, %r8
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
add %rdi, %rdi

// Store
lea addresses_A+0x1931f, %rbx
nop
nop
nop
nop
cmp $1631, %r9
movw $0x5152, (%rbx)
nop
cmp %rax, %rax

// Store
lea addresses_normal+0x577f, %rax
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rax)
nop
and %r8, %r8

// Store
mov $0x5dfae5000000007f, %r8
nop
nop
nop
nop
and %r9, %r9
movl $0x51525354, (%r8)
nop
nop
nop
nop
dec %rdi

// Store
mov $0x73, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rdi)
nop
add $34545, %r8

// Load
lea addresses_normal+0x577f, %rdx
nop
nop
nop
nop
sub %rax, %rax
movb (%rdx), %bl
nop
add $54036, %rdi

// Store
lea addresses_WT+0x1f47f, %rdx
nop
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movaps %xmm2, (%rdx)
nop
nop
dec %r9

// Faulty Load
lea addresses_normal+0x577f, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add $57860, %rdx
mov (%r9), %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'58': 1}
58
*/
