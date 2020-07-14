.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0x139bd, %r10
nop
nop
nop
nop
nop
lfence
mov (%r10), %r13
and %rdx, %rdx

// Store
lea addresses_UC+0x9677, %rcx
nop
nop
dec %rdi
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
nop
xor %rdx, %rdx

// Store
lea addresses_normal+0x1537d, %rcx
clflush (%rcx)
nop
sub %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
nop
add $59072, %rdx

// Store
lea addresses_normal+0xc2e9, %r10
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
and $5664, %r10

// Store
lea addresses_A+0x151fd, %rdi
inc %r13
movl $0x51525354, (%rdi)
nop
sub $25274, %rdi

// Store
lea addresses_PSE+0x12b9d, %rsi
clflush (%rsi)
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movaps %xmm6, (%rsi)
nop
nop
nop
nop
nop
xor $19942, %rdx

// Store
mov $0x3f38a000000005bd, %r13
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_PSE+0x1aebd, %r10
add %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, (%r10)
nop
nop
nop
nop
cmp $54797, %rsi

// Store
mov $0xbbd, %rdi
nop
and %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%rdi)
nop
xor $16742, %rdx

// Faulty Load
lea addresses_WT+0x139bd, %r9
nop
nop
nop
and %rdi, %rdi
movb (%r9), %cl
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'39': 368}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
