.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1916d, %r12
and %r8, %r8
mov (%r12), %r13
nop
nop
cmp $44934, %rbp
lea addresses_normal_ht+0x13ead, %r10
nop
nop
nop
nop
nop
sub %r9, %r9
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
cmp $36233, %r12
lea addresses_UC_ht+0x16ead, %rsi
lea addresses_D_ht+0x21dd, %rdi
nop
add $53680, %rbx
mov $32, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x10bad, %r12
clflush (%r12)
nop
nop
nop
nop
nop
dec %rcx
movw $0x6162, (%r12)
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rcx

// Store
lea addresses_D+0x1eaab, %r11
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
nop
nop
nop
inc %r14

// Store
lea addresses_US+0xb4ad, %r10
clflush (%r10)
sub %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r10)
nop
nop
xor $17022, %rbp

// Store
lea addresses_WC+0xefad, %r14
nop
nop
nop
sub $32185, %r10
movw $0x5152, (%r14)
xor %rcx, %rcx

// Faulty Load
lea addresses_US+0x6bad, %r13
nop
xor $11100, %r11
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'00': 64}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
