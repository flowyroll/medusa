.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x15d53, %rax
nop
nop
nop
nop
nop
add $22728, %r10
movb $0x61, (%rax)
xor $63791, %r11
lea addresses_WC_ht+0x740e, %rdx
nop
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
sub %rbp, %rbp
lea addresses_D_ht+0x98c1, %rsi
lea addresses_D_ht+0x169e, %rdi
clflush (%rdi)
nop
xor %r14, %r14
mov $127, %rcx
rep movsb
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x17dfe, %rsi
lea addresses_D_ht+0x149e, %rdi
nop
nop
add $51115, %r11
mov $58, %rcx
rep movsq
nop
nop
nop
add $54640, %r10
lea addresses_normal_ht+0xd9fe, %r14
cmp %rbp, %rbp
mov (%r14), %r11w
nop
nop
nop
add %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi

// Load
lea addresses_US+0x1629e, %rbx
clflush (%rbx)
nop
nop
nop
nop
add %r9, %r9
mov (%rbx), %r15
nop
nop
nop
sub $11478, %rbp

// Store
lea addresses_WT+0x13c5e, %rbp
sub $3338, %rcx
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0x33565c00000006de, %rbp
cmp %rbx, %rbx
movw $0x5152, (%rbp)
nop
nop
nop
dec %r9

// Store
lea addresses_US+0x9afe, %rax
nop
nop
nop
and $2374, %rcx
movl $0x51525354, (%rax)
nop
nop
nop
nop
sub %r9, %r9

// Load
mov $0x84, %r9
nop
nop
nop
add $18548, %r15
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
xor $59654, %r15

// Load
lea addresses_RW+0x1aa9e, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb (%rdi), %r9b
nop
nop
nop
inc %r15

// Store
lea addresses_D+0x17c9e, %rcx
nop
nop
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_WT+0xb7c4, %rax
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WT+0x1d57e, %r15
nop
nop
nop
nop
inc %rbp
movl $0x51525354, (%r15)
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_RW+0x1aa9e, %rcx
nop
sub %rdi, %rdi
mov (%rcx), %ebx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'32': 352}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
