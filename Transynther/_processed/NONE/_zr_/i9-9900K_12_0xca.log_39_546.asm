.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x16cb5, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub $34614, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
inc %r10

// Store
mov $0xaf7, %rcx
clflush (%rcx)
nop
cmp %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0x1bff, %r15
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r15)
nop
nop
sub $44790, %rdi

// Load
lea addresses_PSE+0x182ff, %r10
nop
nop
nop
xor %r13, %r13
mov (%r10), %di
nop
nop
sub $15096, %rdi

// Faulty Load
lea addresses_WC+0x133ff, %r10
nop
nop
and $16234, %rdi
movups (%r10), %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 39}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
