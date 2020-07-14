.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xdc95, %r8
nop
nop
lfence
vmovups (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
inc %r9
lea addresses_UC_ht+0xff95, %r10
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x6091, %rdi
nop
nop
nop
and $3598, %r13
movl $0x61626364, (%rdi)
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x15915, %rdi
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%rdi)
nop
nop
xor %r10, %r10
lea addresses_A_ht+0xc795, %rsi
lea addresses_D_ht+0xf202, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $3228, %rbx
mov $71, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0x9f95, %r8
nop
nop
xor %rcx, %rcx
movups (%r8), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
sub $1975, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_RW+0xaf95, %r11
nop
nop
nop
nop
nop
cmp $61558, %rax
movb (%r11), %r8b
nop
nop
xor $65495, %r8

// Store
lea addresses_PSE+0xc96f, %r10
clflush (%r10)
nop
nop
nop
nop
sub $38473, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovaps %ymm6, (%r10)
add %rdx, %rdx

// Faulty Load
lea addresses_RW+0xaf95, %rax
nop
nop
nop
nop
add %r11, %r11
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'32': 1}
32
*/
