.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1c81e, %rdi
nop
nop
nop
nop
add $2695, %rcx
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x1291e, %rbp
nop
nop
nop
nop
and %rdx, %rdx
mov (%rbp), %r9w
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x19450, %r8
nop
nop
nop
nop
nop
sub $32503, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x649e, %rsi
nop
nop
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
add $87, %rsi
lea addresses_D_ht+0xe34e, %rsi
lea addresses_D_ht+0x1e09e, %rdi
nop
nop
dec %r15
mov $79, %rcx
rep movsw
nop
nop
inc %r15
lea addresses_normal_ht+0xb89e, %r15
add %rsi, %rsi
movl $0x61626364, (%r15)
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x689e, %rsi
lea addresses_D_ht+0x1a7e, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $110, %rcx
rep movsw
nop
nop
nop
sub $46884, %rcx
lea addresses_D_ht+0x17a9e, %rbp
clflush (%rbp)
nop
nop
nop
add $14600, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0xa09e, %rsi
lea addresses_UC_ht+0x1e29e, %rdi
inc %r15
mov $125, %rcx
rep movsl
nop
sub $45132, %r9
lea addresses_WC_ht+0xca9e, %rsi
sub %rdx, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
add $52593, %rdx
lea addresses_UC_ht+0x1dcde, %rsi
lea addresses_WC_ht+0x931e, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
and $15031, %rbp
lea addresses_normal_ht+0x68de, %rbp
nop
cmp %rdx, %rdx
mov (%rbp), %si
dec %rsi
lea addresses_UC_ht+0x3f9e, %rsi
lea addresses_UC_ht+0x154fe, %rdi
nop
nop
nop
nop
nop
xor $20549, %rbp
mov $88, %rcx
rep movsb
nop
nop
nop
nop
cmp $61961, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx

// Store
lea addresses_RW+0xfe3e, %r14
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x5152, (%r14)
dec %r13

// Store
lea addresses_normal+0xe5fe, %r13
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
nop
sub $59224, %r14

// Store
lea addresses_RW+0x13f2e, %rbx
clflush (%rbx)
nop
nop
nop
nop
and %r8, %r8
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
add $40667, %rbx

// Store
lea addresses_PSE+0x18c9e, %r11
nop
dec %r14
movb $0x51, (%r11)
add $19959, %rcx

// Store
lea addresses_normal+0x53db, %r11
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
sub %r10, %r10

// Load
lea addresses_D+0xf73e, %r13
nop
cmp %rbx, %rbx
movb (%r13), %r8b
and $5353, %r10

// Faulty Load
lea addresses_PSE+0x18c9e, %r8
nop
nop
nop
nop
cmp %r14, %r14
movaps (%r8), %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'46': 28, '00': 20955, '45': 845, '72': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
